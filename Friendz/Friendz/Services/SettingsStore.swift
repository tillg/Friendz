//
//  SettingsStore.swift
//  Friendz
//
//  Created by Claude Code
//

import Foundation
import SwiftUI
import SwiftData

@MainActor
@Observable
class SettingsStore {
    private let defaults = UserDefaults.standard

    private let lastSyncDateKey = "lastSyncDate"
    private let lastSyncDurationKey = "lastSyncDuration"
    private let lastSyncContactCountKey = "lastSyncContactCount"

    var lastSyncDate: Date? {
        get {
            if let timestamp = defaults.object(forKey: lastSyncDateKey) as? Double {
                return Date(timeIntervalSince1970: timestamp)
            }
            return nil
        }
        set {
            if let date = newValue {
                defaults.set(date.timeIntervalSince1970, forKey: lastSyncDateKey)
            } else {
                defaults.removeObject(forKey: lastSyncDateKey)
            }
        }
    }

    var lastSyncDuration: TimeInterval {
        get {
            defaults.double(forKey: lastSyncDurationKey)
        }
        set {
            defaults.set(newValue, forKey: lastSyncDurationKey)
        }
    }

    var lastSyncContactCount: Int {
        get {
            defaults.integer(forKey: lastSyncContactCountKey)
        }
        set {
            defaults.set(newValue, forKey: lastSyncContactCountKey)
        }
    }

    func recordSync(duration: TimeInterval, contactCount: Int) {
        lastSyncDate = Date()
        lastSyncDuration = duration
        lastSyncContactCount = contactCount
    }

    /// Record sync completion with automatic duration and contact count calculation
    func recordSyncCompletion(startTime: Date, modelContext: ModelContext) {
        let duration = Date().timeIntervalSince(startTime)
        let descriptor = FetchDescriptor<Friend>(predicate: #Predicate { !$0.isDeleted })
        let contactCount = (try? modelContext.fetchCount(descriptor)) ?? 0
        recordSync(duration: duration, contactCount: contactCount)
    }
}
