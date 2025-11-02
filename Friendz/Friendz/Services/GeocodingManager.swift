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

    // Rate limiting with exponential backoff
    private let minRequestDelay: Duration = .seconds(60)    // Apple's documented minimum
    private let maxRequestDelay: Duration = .seconds(300)   // 5 minutes max
    private var currentDelay: Duration = .seconds(60)

    // Rate limit detection
    private var consecutiveFailures: Int = 0
    private let failureThreshold: Int = 3  // Assume rate limited after 3 consecutive failures

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
        consecutiveFailures = 0
        currentDelay = minRequestDelay  // Reset to minimum delay
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
                address.country
            ]
            .filter { !$0.isEmpty }
            .joined(separator: ", ")

            let friendName = "\(item.friend.firstName) \(item.friend.lastName)".trimmingCharacters(in: .whitespaces)

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
                consecutiveFailures = 0  // Reset on success

                // Success may indicate we can reduce delay (but stay above minimum)
                if currentDelay > minRequestDelay {
                    currentDelay = max(minRequestDelay, currentDelay * 0.8)
                }

                // Single line log: name/address → result
                print("✅ \(friendName) (\(addressString)) → \(String(format: "%.4f", result.latitude)), \(String(format: "%.4f", result.longitude)) | Queue: \(queue.count) | Success: \(successCount) | Failed: \(failedCount)")

                // Update activity status
                let processed = totalAddresses - queue.count
                activityStatusManager?.updateGeocoding(.locating(current: processed, total: totalAddresses))

                // Rate limiting: wait before next request
                try? await Task.sleep(for: currentDelay)

            } catch {
                // Handle geocoding failure
                failedCount += 1
                consecutiveFailures += 1

                let isRateLimitError = isLikelyRateLimitError(error)
                let nsError = error as NSError
                let errorCode = "\(nsError.domain):\(nsError.code)"

                // Implement exponential backoff on consecutive failures
                var delayInfo = ""
                if consecutiveFailures >= failureThreshold || isRateLimitError {
                    // Double the delay (exponential backoff), up to max
                    let newDelay = min(currentDelay * 2, maxRequestDelay)
                    if newDelay != currentDelay {
                        currentDelay = newDelay
                        delayInfo = " [BACKOFF: \(Int(currentDelay.components.seconds))s]"
                    }
                }

                // Single line log: name/address → error
                print("❌ \(friendName) (\(addressString)) → \(errorCode) | Consecutive: \(consecutiveFailures) | Queue: \(queue.count) | Success: \(successCount) | Failed: \(failedCount)\(delayInfo)")

                // Keep needsGeocoding = true so it can be retried later

                // Update activity status
                let processed = totalAddresses - queue.count
                activityStatusManager?.updateGeocoding(.locating(current: processed, total: totalAddresses))

                // Use current delay (which may have been increased)
                try? await Task.sleep(for: currentDelay)
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

    /// Checks if an error is likely due to rate limiting
    private func isLikelyRateLimitError(_ error: Error) -> Bool {
        let nsError = error as NSError

        // MKError.placemarkNotFound (code 4) often indicates rate limiting
        // when it happens repeatedly for different addresses
        if nsError.domain == "MKErrorDomain" && nsError.code == 4 {
            return true
        }

        // CLError.network (code 2) can also indicate rate limiting
        if nsError.domain == "kCLErrorDomain" && nsError.code == 2 {
            return true
        }

        return false
    }

    /// Decodes CLError and MKError codes into human-readable messages
    private func decodeGeocodingError(_ error: Error) -> String {
        let nsError = error as NSError

        // Check if it's a MapKit error
        if nsError.domain == "MKErrorDomain" {
            switch nsError.code {
            case 1:
                return "MKError.unknown: Unknown error"
            case 2:
                return "MKError.serverFailure: Server failure"
            case 3:
                return "MKError.loadingThrottled: Loading throttled (rate limit)"
            case 4:
                return "MKError.placemarkNotFound: Placemark not found (may indicate rate limiting or invalid address)"
            case 5:
                return "MKError.directionsNotFound: Directions not found"
            default:
                return "MKError code \(nsError.code): \(error.localizedDescription)"
            }
        }

        // Check if it's a CoreLocation error
        if nsError.domain == "kCLErrorDomain" {
            switch nsError.code {
            case 0:
                return "CLError.locationUnknown: Location unknown"
            case 1:
                return "CLError.denied: User denied location access"
            case 2:
                return "CLError.network: Network unavailable (may indicate rate limiting)"
            case 8:
                return "CLError.geocodeFoundNoResult: No results found for this address"
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
