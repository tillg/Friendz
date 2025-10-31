//
//  ActivityStatusManager.swift
//  Friendz
//
//  Created by Claude Code on 30.10.25.
//

import Foundation
import Observation

/// Progress information for contact syncing
struct SyncProgress: Equatable {
    let current: Int
    let total: Int
    let percentage: Double

    init(current: Int, total: Int) {
        self.current = current
        self.total = total
        self.percentage = total > 0 ? Double(current) / Double(total) : 0.0
    }
}

/// Manager for tracking and displaying background activity status
@MainActor
@Observable
class ActivityStatusManager {
    // MARK: - Status Properties

    var contactSyncStatus: ContactSyncStatus = .idle
    var geocodingStatus: GeocodingStatus = .idle

    // MARK: - Dismissal State

    var contactSyncDismissed: Bool = false
    var geocodingDismissed: Bool = false

    // MARK: - Status Enums

    enum ContactSyncStatus: Equatable {
        case idle
        case syncing(progress: SyncProgress?)
        case success(count: Int)
        case error(message: String)

        var isActive: Bool {
            if case .syncing = self { return true }
            return false
        }

        var isError: Bool {
            if case .error = self { return true }
            return false
        }

        var isSuccess: Bool {
            if case .success = self { return true }
            return false
        }
    }

    enum GeocodingStatus: Equatable {
        case idle
        case locating(current: Int, total: Int)
        case success(found: Int, failed: Int)
        case error(message: String)

        var isActive: Bool {
            if case .locating = self { return true }
            return false
        }

        var isError: Bool {
            if case .error = self { return true }
            return false
        }

        var isSuccess: Bool {
            if case .success = self { return true }
            return false
        }
    }

    // MARK: - Public Methods

    /// Update contact sync status
    func updateContactSync(_ status: ContactSyncStatus) {
        contactSyncStatus = status
        contactSyncDismissed = false

        // Auto-dismiss success states after delay
        if status.isSuccess {
            Task {
                try? await Task.sleep(for: .seconds(3))
                if contactSyncStatus.isSuccess && !contactSyncDismissed {
                    contactSyncStatus = .idle
                }
            }
        }
    }

    /// Update geocoding status
    func updateGeocoding(_ status: GeocodingStatus) {
        geocodingStatus = status

        // Auto-dismiss success states after delay
        if status.isSuccess {
            Task {
                try? await Task.sleep(for: .seconds(2))
                if geocodingStatus.isSuccess && !geocodingDismissed {
                    geocodingStatus = .idle
                }
            }
        }
    }

    /// Dismiss contact sync status
    func dismissContactSync() {
        contactSyncDismissed = true
        if !contactSyncStatus.isActive {
            contactSyncStatus = .idle
        }
    }

    /// Dismiss geocoding status
    func dismissGeocoding() {
        geocodingDismissed = true
        if !geocodingStatus.isActive {
            geocodingStatus = .idle
        }
    }

    /// Check if any status should be visible
    func hasVisibleStatus() -> Bool {
        return shouldShowContactSync() || shouldShowGeocoding()
    }

    /// Check if contact sync status should be visible
    func shouldShowContactSync() -> Bool {
        return contactSyncStatus != .idle && !contactSyncDismissed
    }

    /// Check if geocoding status should be visible
    func shouldShowGeocoding() -> Bool {
        return geocodingStatus != .idle && !geocodingDismissed
    }
}
