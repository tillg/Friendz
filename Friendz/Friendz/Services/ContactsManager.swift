//
//  ContactsManager.swift
//  Friendz
//
//  Created by Claude Code on 28.10.25.
//

import Foundation
import Contacts
import SwiftData
import SwiftUI
import Observation

/// Sync status for the contacts synchronization process
enum SyncStatus: Equatable {
    case idle
    case syncing
    case completed
    case error(String)
}

/// Manager class responsible for syncing iOS Contacts with the Friend SwiftData model
@MainActor
@Observable
class ContactsManager {
    var isLoading: Bool = false
    var syncStatus: SyncStatus = .idle
    var errorMessage: String?

    private let contactStore = CNContactStore()

    // MARK: - Permission Handling

    /// Request access to iOS Contacts
    func requestAccess() async throws -> Bool {
        try await contactStore.requestAccess(for: .contacts)
    }

    // MARK: - Main Sync Method

    /// Sync contacts from iOS Contacts to SwiftData
    func syncContacts(modelContext: ModelContext) async {
        isLoading = true
        syncStatus = .syncing
        errorMessage = nil

        do {
            // Request permission first
            let hasAccess = try await requestAccess()
            guard hasAccess else {
                errorMessage = "Contacts access denied. Please enable in Settings."
                syncStatus = .error("Access denied")
                isLoading = false
                return
            }

            // Fetch all contacts from iOS Contacts
            let cnContacts = try await fetchAllContacts()

            // Fetch existing friends from SwiftData
            let descriptor = FetchDescriptor<Friend>()
            let existingFriends = try modelContext.fetch(descriptor)

            // Create a dictionary of existing friends by contactIdentifier
            var friendsByIdentifier: [String: Friend] = [:]
            for friend in existingFriends {
                friendsByIdentifier[friend.contactIdentifier] = friend
            }

            // Create a set of current contact identifiers for deletion detection
            let currentContactIdentifiers = Set(cnContacts.map { $0.identifier })

            // Process each contact
            for cnContact in cnContacts {
                if let existingFriend = friendsByIdentifier[cnContact.identifier] {
                    // Contact exists - check if it needs updating
                    if detectChanges(existing: existingFriend, new: cnContact) {
                        updateFriend(existingFriend, from: cnContact)
                    }
                } else {
                    // New contact - create Friend
                    let newFriend = mapContactToFriend(cnContact)
                    modelContext.insert(newFriend)
                }
            }

            // Mark deleted contacts (contacts that are not in current iOS Contacts)
            for friend in existingFriends where !friend.isDeleted {
                if !currentContactIdentifiers.contains(friend.contactIdentifier) {
                    friend.isDeleted = true
                }
            }

            // Save changes
            try modelContext.save()

            syncStatus = .completed
        } catch {
            errorMessage = "Failed to sync contacts: \(error.localizedDescription)"
            syncStatus = .error(error.localizedDescription)
        }

        isLoading = false
    }

    // MARK: - Fetch Contacts

    /// Fetch all contacts from iOS Contacts
    /// This method is nonisolated to avoid blocking the main thread
    nonisolated private func fetchAllContacts() async throws -> [CNContact] {
        let keys: [CNKeyDescriptor] = [
            CNContactGivenNameKey as CNKeyDescriptor,
            CNContactFamilyNameKey as CNKeyDescriptor,
            CNContactMiddleNameKey as CNKeyDescriptor,
            CNContactPhoneNumbersKey as CNKeyDescriptor,
            CNContactEmailAddressesKey as CNKeyDescriptor,
            CNContactPostalAddressesKey as CNKeyDescriptor,
            CNContactImageDataKey as CNKeyDescriptor,
            CNContactIdentifierKey as CNKeyDescriptor,
            CNContactDatesKey as CNKeyDescriptor
        ]

        let request = CNContactFetchRequest(keysToFetch: keys)

        // Run blocking contact enumeration on background thread
        return try await Task.detached {
            let contactStore = CNContactStore()
            var contacts: [CNContact] = []
            try contactStore.enumerateContacts(with: request) { contact, _ in
                contacts.append(contact)
            }
            return contacts
        }.value
    }

    // MARK: - Mapping Functions

    /// Map a CNContact to a Friend model
    private func mapContactToFriend(_ contact: CNContact) -> Friend {
        // Map phone numbers
        let phoneNumbers = contact.phoneNumbers.map { phoneNumber in
            LabeledValue(
                label: CNLabeledValue<CNPhoneNumber>.localizedString(forLabel: phoneNumber.label ?? ""),
                value: phoneNumber.value.stringValue
            )
        }

        // Map email addresses
        let emailAddresses = contact.emailAddresses.map { email in
            LabeledValue(
                label: CNLabeledValue<NSString>.localizedString(forLabel: email.label ?? ""),
                value: email.value as String
            )
        }

        // Map postal addresses
        let postalAddresses = contact.postalAddresses.map { address in
            let postalAddress = address.value
            return LabeledPostalAddress(
                label: CNLabeledValue<CNPostalAddress>.localizedString(forLabel: address.label ?? ""),
                street: postalAddress.street,
                city: postalAddress.city,
                state: postalAddress.state,
                postalCode: postalAddress.postalCode,
                country: postalAddress.country
            )
        }

        // Get photo data
        let photoData = contact.imageData

        // Get last modified date (use creation date as fallback)
        let lastModifiedDate = contact.dates.first?.value as? Date ?? Date()

        return Friend(
            firstName: contact.givenName,
            lastName: contact.familyName,
            middleName: contact.middleName.isEmpty ? nil : contact.middleName,
            phoneNumbers: phoneNumbers,
            emailAddresses: emailAddresses,
            postalAddresses: postalAddresses,
            photoData: photoData,
            contactIdentifier: contact.identifier,
            lastModifiedDate: lastModifiedDate,
            isDeleted: false
        )
    }

    /// Update an existing Friend with data from a CNContact
    private func updateFriend(_ friend: Friend, from contact: CNContact) {
        friend.firstName = contact.givenName
        friend.lastName = contact.familyName
        friend.middleName = contact.middleName.isEmpty ? nil : contact.middleName

        // Map phone numbers
        friend.phoneNumbers = contact.phoneNumbers.map { phoneNumber in
            LabeledValue(
                label: CNLabeledValue<CNPhoneNumber>.localizedString(forLabel: phoneNumber.label ?? ""),
                value: phoneNumber.value.stringValue
            )
        }

        // Map email addresses
        friend.emailAddresses = contact.emailAddresses.map { email in
            LabeledValue(
                label: CNLabeledValue<NSString>.localizedString(forLabel: email.label ?? ""),
                value: email.value as String
            )
        }

        // Map postal addresses
        friend.postalAddresses = contact.postalAddresses.map { address in
            let postalAddress = address.value
            return LabeledPostalAddress(
                label: CNLabeledValue<CNPostalAddress>.localizedString(forLabel: address.label ?? ""),
                street: postalAddress.street,
                city: postalAddress.city,
                state: postalAddress.state,
                postalCode: postalAddress.postalCode,
                country: postalAddress.country
            )
        }

        // Update photo data
        friend.photoData = contact.imageData

        // Update last modified date
        friend.lastModifiedDate = contact.dates.first?.value as? Date ?? Date()

        // Ensure not marked as deleted if it exists in Contacts
        friend.isDeleted = false
    }

    // MARK: - Change Detection

    /// Detect if a contact has changed by comparing modification dates
    private func detectChanges(existing: Friend, new: CNContact) -> Bool {
        // Get the new contact's modification date
        let newModifiedDate = new.dates.first?.value as? Date ?? Date()

        // If we don't have a last modified date, assume it needs updating
        guard let existingModifiedDate = existing.lastModifiedDate else {
            return true
        }

        // Compare dates - if new contact is newer, it has changed
        return newModifiedDate > existingModifiedDate
    }
}
