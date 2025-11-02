//
//  Date+Friendz.swift
//  Friendz
//
//  Created by Claude Code
//

import Foundation

extension Date {
    /// Returns a localized relative time string (e.g., "2 hours ago", "yesterday")
    func relativeTimeString() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}
