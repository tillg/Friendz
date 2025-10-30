//
//  FriendAnnotation.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import Foundation
import CoreLocation

/// Represents a friend's location on the map
struct FriendAnnotation: Identifiable, Hashable, Equatable {
    let id: String  // friendId + addressIndex
    let friendId: UUID
    let coordinate: CLLocationCoordinate2D
    let displayName: String
    let addressLabel: String
    let isCompany: Bool

    /// Create annotation from friend and address
    init(friend: Friend, addressIndex: Int, address: LabeledPostalAddress) {
        self.id = "\(friend.id.uuidString)_\(addressIndex)"
        self.friendId = friend.id
        self.coordinate = CLLocationCoordinate2D(
            latitude: address.latitude ?? 0,
            longitude: address.longitude ?? 0
        )
        self.addressLabel = address.label
        self.isCompany = friend.isCompany

        // Determine display name
        if friend.isCompany {
            // For companies, prefer organization name, fall back to person name
            if let orgName = friend.organizationName, !orgName.isEmpty {
                self.displayName = orgName
            } else {
                let nameParts = [friend.firstName, friend.middleName, friend.lastName]
                    .compactMap { $0 }
                    .filter { !$0.isEmpty }
                self.displayName = nameParts.joined(separator: " ")
            }
        } else {
            // For persons, construct full name, fall back to organization name
            let nameParts = [friend.firstName, friend.middleName, friend.lastName]
                .compactMap { $0 }
                .filter { !$0.isEmpty }
            let fullName = nameParts.joined(separator: " ")

            if fullName.isEmpty, let orgName = friend.organizationName, !orgName.isEmpty {
                self.displayName = orgName
            } else {
                self.displayName = fullName
            }
        }
    }

    /// Title shown in annotation callout
    var title: String {
        if addressLabel.isEmpty {
            return displayName
        }
        return "\(displayName) - \(addressLabel)"
    }

    /// Initials for marker (fallback if no name)
    var initials: String {
        let words = displayName.split(separator: " ")
        if words.count >= 2 {
            return "\(words[0].prefix(1))\(words[1].prefix(1))".uppercased()
        } else if words.count == 1 {
            return String(displayName.prefix(2)).uppercased()
        }
        return "?"
    }

    /// SF Symbol for address type
    var symbolName: String {
        let lowercasedLabel = addressLabel.lowercased()

        if lowercasedLabel.contains("work") || lowercasedLabel.contains("office") {
            return "building.2.fill"
        } else if lowercasedLabel.contains("home") {
            return "house.fill"
        } else {
            return "mappin.circle.fill"
        }
    }

    // MARK: - Hashable & Equatable

    static func == (lhs: FriendAnnotation, rhs: FriendAnnotation) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: - CLLocationCoordinate2D Extensions for Hashable

extension CLLocationCoordinate2D: @retroactive Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(latitude)
        hasher.combine(longitude)
    }

    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
