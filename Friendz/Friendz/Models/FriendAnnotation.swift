//
//  FriendAnnotation.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import Foundation
import CoreLocation
import MapKit

/// Represents a friend's location on the map with clustering support
class FriendAnnotation: NSObject, MKAnnotation, Identifiable {
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

    /// Title shown in annotation callout (MKAnnotation requirement)
    var title: String? {
        if addressLabel.isEmpty {
            return displayName
        }
        return "\(displayName) - \(addressLabel)"
    }

    /// Subtitle shown in annotation callout (MKAnnotation requirement)
    var subtitle: String? {
        return addressLabel.isEmpty ? nil : addressLabel
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

    override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? FriendAnnotation else { return false }
        return id == other.id
    }

    override var hash: Int {
        var hasher = Hasher()
        hasher.combine(id)
        return hasher.finalize()
    }
}
