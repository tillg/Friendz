//
//  Friend.swift
//  Friendz
//
//  Created by Till Gartner on 28.10.25.
//

import Foundation
import SwiftData
import CryptoKit

/// Supporting struct for storing labeled values (phone numbers, emails)
struct LabeledValue: Codable, Hashable {
    let label: String  // e.g., "Mobile", "Work", "Home"
    let value: String
}

/// Supporting struct for storing labeled postal addresses
struct LabeledPostalAddress: Codable, Hashable, Sendable {
    let label: String  // e.g., "Work", "Home"
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String

    // Geocoding fields
    var latitude: Double?
    var longitude: Double?
    var geocodedAddressHash: String?  // Hash of the address that was geocoded
    var geocodedDate: Date?           // When geocoding was performed

    /// Hash of the current address (for validation)
    /// Uses SHA256 for stable, deterministic hashing across app launches
    var addressHash: String {
        let components = [street, city, state, postalCode, country]
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
            .joined(separator: "|")

        // Use SHA256 for stable hashing (same input always produces same output)
        guard let data = components.data(using: .utf8) else {
            return components // Fallback to raw string if encoding fails
        }

        let hash = SHA256.hash(data: data)
        return hash.compactMap { String(format: "%02x", $0) }.joined()
    }

    /// Computed property: Does this address have valid coordinates?
    var hasValidCoordinates: Bool {
        guard latitude != nil,
              longitude != nil,
              let hash = geocodedAddressHash else {
            return false
        }

        // Coordinates are valid if the hash matches
        return hash == addressHash
    }

    /// Computed property: Does this address need geocoding?
    var needsGeocoding: Bool {
        // Needs geocoding if we don't have valid coordinates
        return !hasValidCoordinates
    }

    /// Creates a new address, optionally preserving geocoding data from an existing address
    /// if the address fields haven't changed
    static func create(
        label: String,
        street: String,
        city: String,
        state: String,
        postalCode: String,
        country: String,
        preservingGeocodingFrom existing: LabeledPostalAddress? = nil
    ) -> LabeledPostalAddress {
        // Create new address with provided values
        var newAddress = LabeledPostalAddress(
            label: label,
            street: street,
            city: city,
            state: state,
            postalCode: postalCode,
            country: country
        )

        // Check if we should preserve geocoding data
        if let existing = existing,
           existing.street == street,
           existing.city == city,
           existing.state == state,
           existing.postalCode == postalCode,
           existing.country == country {
            // Address unchanged - preserve ALL geocoding metadata
            newAddress.latitude = existing.latitude
            newAddress.longitude = existing.longitude
            newAddress.geocodedAddressHash = existing.geocodedAddressHash
            newAddress.geocodedDate = existing.geocodedDate

            // Debug logging
            if let lat = existing.latitude, let lon = existing.longitude {
                print("✅ PRESERVED geocoding: \(street), \(city) → (\(lat), \(lon)), needsGeocoding=\(newAddress.needsGeocoding)")
            }
        } else if let existing = existing {
            // Debug: address changed
            print("❌ ADDRESS CHANGED - not preserving:")
            print("   Old: \(existing.street), \(existing.city), \(existing.state), \(existing.postalCode), \(existing.country)")
            print("   New: \(street), \(city), \(state), \(postalCode), \(country)")
        }
        // Otherwise, geocoding metadata stays nil (needsGeocoding computes to true)

        return newAddress
    }
}

@Model
class Friend: Comparable {
    var id: UUID
    var firstName: String
    var lastName: String
    var middleName: String?
    var organizationName: String?

    // Contact type
    var isCompany: Bool

    // Contact details
    var phoneNumbers: [LabeledValue]
    var emailAddresses: [LabeledValue]
    var postalAddresses: [LabeledPostalAddress]

    // Contact photo (stored as original from Contacts)
    var photoData: Data?

    // Contact tracking
    var contactIdentifier: String
    var lastModifiedDate: Date?
    var isDeleted: Bool

    init(
        id: UUID = UUID(),
        firstName: String,
        lastName: String,
        middleName: String? = nil,
        organizationName: String? = nil,
        isCompany: Bool = false,
        phoneNumbers: [LabeledValue] = [],
        emailAddresses: [LabeledValue] = [],
        postalAddresses: [LabeledPostalAddress] = [],
        photoData: Data? = nil,
        contactIdentifier: String,
        lastModifiedDate: Date? = nil,
        isDeleted: Bool = false
    ) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.organizationName = organizationName
        self.isCompany = isCompany
        self.phoneNumbers = phoneNumbers
        self.emailAddresses = emailAddresses
        self.postalAddresses = postalAddresses
        self.photoData = photoData
        self.contactIdentifier = contactIdentifier
        self.lastModifiedDate = lastModifiedDate
        self.isDeleted = isDeleted
    }

    // MARK: - Computed Properties for Display and Sorting

    /// Computed property for sorting: uses "LastName FirstName" for persons, organizationName for companies
    /// Handles edge cases where organization name or person names may be empty
    var sortValue: String {
        // If it's a company, prefer organization name, then fall back to person names
        if isCompany {
            if let orgName = organizationName, !orgName.isEmpty {
                return orgName
            }
            // Fallback: use lastName/firstName if org name is empty
            if !lastName.isEmpty {
                return "\(lastName) \(firstName)".trimmingCharacters(in: .whitespaces)
            }
            return firstName
        }
        // For persons, use lastName firstName
        else if !lastName.isEmpty {
            return "\(lastName) \(firstName)".trimmingCharacters(in: .whitespaces)
        }
        // Fallback to firstName
        else if !firstName.isEmpty {
            return firstName
        }
        // Last resort: use organization name if both first and last names are empty
        else if let orgName = organizationName, !orgName.isEmpty {
            return orgName
        }
        // Ultimate fallback
        else {
            return ""
        }
    }

    /// Section key for grouping in lists (first letter or "#" for numbers)
    var sectionKey: String {
        let firstChar = sortValue.prefix(1).uppercased()
        return firstChar.first?.isNumber == true ? "#" : firstChar
    }

    // MARK: - Geocoding Helper Methods

    /// Returns addresses that need geocoding (computed based on hash validation)
    func addressesNeedingGeocoding() -> [(index: Int, address: LabeledPostalAddress)] {
        postalAddresses.enumerated().filter { $0.element.needsGeocoding }.map { ($0.offset, $0.element) }
    }

    /// Updates coordinates for an address with hash validation metadata
    func updateCoordinates(
        at index: Int,
        latitude: Double,
        longitude: Double,
        addressHash: String,
        geocodedDate: Date
    ) {
        guard index < postalAddresses.count else { return }
        postalAddresses[index].latitude = latitude
        postalAddresses[index].longitude = longitude
        postalAddresses[index].geocodedAddressHash = addressHash
        postalAddresses[index].geocodedDate = geocodedDate
    }

    /// Invalidates geocoding for an address (e.g., after geocoding failure)
    /// This clears coordinates and metadata, causing needsGeocoding to return true
    func invalidateGeocoding(at index: Int) {
        guard index < postalAddresses.count else { return }
        postalAddresses[index].latitude = nil
        postalAddresses[index].longitude = nil
        postalAddresses[index].geocodedAddressHash = nil
        postalAddresses[index].geocodedDate = nil
    }

    // MARK: - Comparable Conformance

    /// Compare two friends for sorting
    /// Logic: Letters come before numbers, then use case-insensitive comparison
    static func < (lhs: Friend, rhs: Friend) -> Bool {
        let val1 = lhs.sortValue
        let val2 = rhs.sortValue

        let firstChar1 = val1.first
        let firstChar2 = val2.first

        let isDigit1 = firstChar1?.isNumber ?? false
        let isDigit2 = firstChar2?.isNumber ?? false

        // If one starts with digit and other doesn't, digit comes after (letters first)
        if isDigit1 && !isDigit2 {
            return false  // lhs (digit) is not less than rhs (letter)
        } else if !isDigit1 && isDigit2 {
            return true   // lhs (letter) is less than rhs (digit)
        }

        // Both same type (both digits or both letters), use normal comparison
        return val1.localizedCaseInsensitiveCompare(val2) == .orderedAscending
    }

    /// Equality based on contact identifier
    static func == (lhs: Friend, rhs: Friend) -> Bool {
        lhs.contactIdentifier == rhs.contactIdentifier
    }

    // MARK: - Sample Data

    /// Sample friends for previews and testing
    static let examples: [Friend] = [
        // Regular person contacts
        Friend(
            firstName: "Emma",
            lastName: "Wilson",
            phoneNumbers: [LabeledValue(label: "mobile", value: "+1 555 0123")],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-1"
        ),
        Friend(
            firstName: "James",
            lastName: "Anderson",
            phoneNumbers: [LabeledValue(label: "work", value: "+1 555 0456")],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-2"
        ),
        Friend(
            firstName: "Sophie",
            lastName: "Martinez",
            phoneNumbers: [],
            emailAddresses: [LabeledValue(label: "personal", value: "sophie.m@example.com")],
            postalAddresses: [],
            contactIdentifier: "sample-3"
        ),
        Friend(
            firstName: "Michael",
            lastName: "Chen",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-4"
        ),
        Friend(
            firstName: "Olivia",
            lastName: "Brown",
            middleName: "Rose",
            phoneNumbers: [LabeledValue(label: "mobile", value: "+1 555 0789")],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-5"
        ),

        // Person contacts with organization
        Friend(
            firstName: "David",
            lastName: "Thompson",
            organizationName: "Acme Corporation",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-6"
        ),
        Friend(
            firstName: "Sarah",
            lastName: "Johnson",
            organizationName: "Tech Solutions Inc",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-7"
        ),
        Friend(
            firstName: "Robert",
            lastName: "Garcia",
            middleName: "James",
            organizationName: "Global Consulting Group",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-8"
        ),

        // Organization-only contacts (companies)
        Friend(
            firstName: "",
            lastName: "",
            organizationName: "City Library",
            isCompany: true,
            phoneNumbers: [LabeledValue(label: "main", value: "+1 555 1000")],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-9"
        ),
        Friend(
            firstName: "",
            lastName: "",
            organizationName: "Downtown Gym",
            isCompany: true,
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-10"
        ),
        Friend(
            firstName: "",
            lastName: "",
            organizationName: "Green Valley School",
            isCompany: true,
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-11"
        ),
        Friend(
            firstName: "",
            lastName: "",
            organizationName: "Riverside Dental",
            isCompany: true,
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-12"
        ),
        Friend(
            firstName: "",
            lastName: "",
            organizationName: "Pizza Palace",
            isCompany: true,
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-13"
        ),
        Friend(
            firstName: "",
            lastName: "",
            organizationName: "Mountain View Cafe",
            isCompany: true,
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-14"
        ),

        // More regular contacts
        Friend(
            firstName: "Daniel",
            lastName: "Lee",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-15"
        ),
        Friend(
            firstName: "Isabella",
            lastName: "White",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-16"
        ),
        Friend(
            firstName: "Alexander",
            lastName: "Miller",
            middleName: "Scott",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-17"
        ),
        Friend(
            firstName: "Mia",
            lastName: "Davis",
            phoneNumbers: [],
            emailAddresses: [],
            postalAddresses: [],
            contactIdentifier: "sample-18"
        )
    ]
}
