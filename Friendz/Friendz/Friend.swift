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
        self.phoneNumbers = phoneNumbers
        self.emailAddresses = emailAddresses
        self.postalAddresses = postalAddresses
        self.photoData = photoData
        self.contactIdentifier = contactIdentifier
        self.lastModifiedDate = lastModifiedDate
        self.isDeleted = isDeleted
    }
}
