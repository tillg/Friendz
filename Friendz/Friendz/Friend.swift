//
//  Friend.swift
//  Friendz
//
//  Created by Till Gartner on 28.10.25.
//

import Foundation
import SwiftData

/// Supporting struct for storing labeled values (phone numbers, emails)
struct LabeledValue: Codable, Hashable {
    let label: String  // e.g., "Mobile", "Work", "Home"
    let value: String
}

/// Supporting struct for storing labeled postal addresses
struct LabeledPostalAddress: Codable, Hashable {
    let label: String  // e.g., "Work", "Home"
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String
}

@Model
class Friend {
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

    /// Computed property for sorting: uses "LastName FirstName" for persons, organizationName for companies
    var sortValue: String {
        // If it's a company, use organization name
        if isCompany {
            return organizationName ?? ""
        }
        // For persons, use lastName firstName
        else if !lastName.isEmpty {
            return "\(lastName) \(firstName)".trimmingCharacters(in: .whitespaces)
        }
        // Fallback to firstName
        else {
            return firstName
        }
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
