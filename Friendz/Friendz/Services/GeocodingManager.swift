//
//  GeocodingManager.swift
//  Friendz
//
//  Created by Claude on 29.10.25.
//

import Foundation
import SwiftData

/// Manager that handles geocoding queue with rate limiting
@Observable
@MainActor
class GeocodingManager {
    // MARK: - Observable Properties

    /// Whether geocoding is currently in progress
    var isProcessing: Bool = false

    /// Number of items in the queue
    var queueCount: Int = 0

    /// Number of successfully geocoded addresses
    var successCount: Int = 0

    /// Number of failed geocoding attempts
    var failedCount: Int = 0

    // MARK: - Private Properties

    private let service = GeocodingService()
    private let modelContext: ModelContext
    private var processingTask: Task<Void, Never>?

    /// Optional reference to ActivityStatusManager for UI updates
    weak var activityStatusManager: ActivityStatusManager?

    /// Queue of friends needing geocoding
    private var queue: [(friend: Friend, addressIndex: Int)] = [] {
        didSet {
            queueCount = queue.count
        }
    }

    // Rate limiting: 1 request per second
    private let requestDelay: Duration = .seconds(1)

    // MARK: - Initialization

    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }

    // MARK: - Public Methods

    /// Enqueues a friend's address for geocoding
    func enqueueAddress(friend: Friend, addressIndex: Int) {
        // Check if already in queue
        let alreadyQueued = queue.contains { $0.friend.id == friend.id && $0.addressIndex == addressIndex }

        guard !alreadyQueued else { return }

        queue.append((friend: friend, addressIndex: addressIndex))

        // Start processing if not already running
        if !isProcessing {
            startProcessing()
        }
    }

    /// Scans all friends and enqueues addresses that need geocoding
    func scanAndEnqueueFriends() {
        let descriptor = FetchDescriptor<Friend>(
            predicate: #Predicate { !$0.isDeleted }
        )

        guard let allFriends = try? modelContext.fetch(descriptor) else {
            return
        }

        for friend in allFriends {
            let needsGeocoding = friend.addressesNeedingGeocoding()
            for (index, _) in needsGeocoding {
                enqueueAddress(friend: friend, addressIndex: index)
            }
        }
    }

    /// Retries all failed geocoding attempts
    func retryFailed() {
        failedCount = 0
        scanAndEnqueueFriends()
    }

    /// Cancels ongoing geocoding operations
    func cancel() {
        processingTask?.cancel()
        processingTask = nil
        isProcessing = false
        queue.removeAll()
    }

    // MARK: - Private Methods

    private func startProcessing() {
        guard !isProcessing else { return }

        isProcessing = true

        processingTask = Task { @MainActor in
            await processQueue()
        }
    }

    private func processQueue() async {
        let totalAddresses = queue.count
        print("📍 Starting geocoding queue: \(totalAddresses) address(es) to process")

        // Notify activity manager that geocoding started
        if totalAddresses > 0 {
            activityStatusManager?.updateGeocoding(.locating(current: 0, total: totalAddresses))
        }

        while !queue.isEmpty {
            guard !Task.isCancelled else {
                isProcessing = false
                return
            }

            let item = queue.removeFirst()

            // Verify the address still needs geocoding (might have been processed already)
            guard item.addressIndex < item.friend.postalAddresses.count,
                  item.friend.postalAddresses[item.addressIndex].needsGeocoding else {
                continue
            }

            let address = item.friend.postalAddresses[item.addressIndex]

            // Build address string for logging
            let addressString = [
                address.street,
                address.city,
                address.state,
                address.postalCode,
                address.country
            ]
            .filter { !$0.isEmpty }
            .joined(separator: ", ")

            print("🗺️ Geocoding: \(item.friend.firstName) \(item.friend.lastName)")
            print("   Address: \(addressString)")
            print("   Queue: \(queue.count) remaining | Success: \(successCount) | Failed: \(failedCount)")

            do {
                // Perform geocoding
                let result = try await service.geocode(address: address)

                // Update the friend's address with coordinates AND metadata
                item.friend.updateCoordinates(
                    at: item.addressIndex,
                    latitude: result.latitude,
                    longitude: result.longitude,
                    addressHash: result.addressHash,
                    geocodedDate: result.geocodedDate
                )

                // Save changes
                try modelContext.save()

                successCount += 1

                print("✅ SUCCESS: \(item.friend.firstName) \(item.friend.lastName)")
                print("   Coordinates: \(result.latitude), \(result.longitude)")
                print("   Queue: \(queue.count) remaining | Success: \(successCount) | Failed: \(failedCount)")

                // Update activity status
                let processed = totalAddresses - queue.count
                activityStatusManager?.updateGeocoding(.locating(current: processed, total: totalAddresses))

                // Rate limiting: wait before next request
                try? await Task.sleep(for: requestDelay)

            } catch {
                // Handle geocoding failure
                failedCount += 1

                // Decode the error for better logging
                let errorDetails = decodeGeocodingError(error)
                print("❌ FAILED: \(item.friend.firstName) \(item.friend.lastName)")
                print("   Address: \(addressString)")
                print("   Error: \(errorDetails)")
                print("   Queue: \(queue.count) remaining | Success: \(successCount) | Failed: \(failedCount)")

                // Keep needsGeocoding = true so it can be retried later

                // Update activity status
                let processed = totalAddresses - queue.count
                activityStatusManager?.updateGeocoding(.locating(current: processed, total: totalAddresses))

                // Longer delay after failure to avoid hammering the service
                try? await Task.sleep(for: .seconds(2))
            }
        }

        isProcessing = false
        print("🏁 Geocoding queue completed")
        print("   ✅ Successful: \(successCount)")
        print("   ❌ Failed: \(failedCount)")
        print("   📊 Total: \(successCount + failedCount)")

        // Notify completion
        if totalAddresses > 0 {
            if failedCount == 0 {
                activityStatusManager?.updateGeocoding(.success(found: successCount, failed: 0))
            } else if successCount > 0 {
                activityStatusManager?.updateGeocoding(.success(found: successCount, failed: failedCount))
            } else {
                activityStatusManager?.updateGeocoding(.error(message: "Unable to locate addresses"))
            }
        }
    }

    /// Decodes CLError codes into human-readable messages
    private func decodeGeocodingError(_ error: Error) -> String {
        let nsError = error as NSError

        // Check if it's a CoreLocation error
        if nsError.domain == "kCLErrorDomain" {
            switch nsError.code {
            case 0:
                return "CLError.locationUnknown: Location unknown"
            case 1:
                return "CLError.denied: User denied location access"
            case 2:
                return "CLError.network: Network unavailable"
            case 8:
                return "CLError.geocodeFoundNoResult: No results found for this address (address may be invalid, incomplete, or not recognized)"
            case 9:
                return "CLError.geocodeCanceled: Geocoding was cancelled"
            case 10:
                return "CLError.geocodeFoundPartialResult: Only partial results found"
            default:
                return "CLError code \(nsError.code): \(error.localizedDescription)"
            }
        }

        return error.localizedDescription
    }
}
