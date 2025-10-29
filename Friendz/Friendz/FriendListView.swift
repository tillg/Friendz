//
//  FriendListView.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import SwiftUI

/// A row view displaying a friend in the contacts list
struct FriendListView: View {
    let friend: Friend

    var body: some View {
        HStack(spacing: 12) {
            // Avatar (photo, initials, or organization icon)
            avatarView

            // Contact info
            if friend.isCompany {
                // Company contact: organization name, or fallback to person name if org is empty
                VStack(alignment: .leading, spacing: 2) {
                    Text(displayName)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(.primary)

                    if let subtitle = companySubtitle {
                        Text(subtitle)
                            .font(.system(size: 15))
                            .foregroundStyle(.secondary)
                    }
                }
            } else {
                // Person contact: name with optional organization subtitle
                VStack(alignment: .leading, spacing: 2) {
                    // If no personal names, show organization name as primary
                    if friend.firstName.isEmpty && friend.lastName.isEmpty,
                       let orgName = friend.organizationName, !orgName.isEmpty {
                        Text(orgName)
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundStyle(.primary)
                    } else {
                        // Name with bold last name
                        HStack(spacing: 4) {
                            if !friend.firstName.isEmpty {
                                Text(friend.firstName)
                                    .font(.system(size: 17))
                            }
                            if let middleName = friend.middleName, !middleName.isEmpty {
                                Text(middleName)
                                    .font(.system(size: 17))
                            }
                            if !friend.lastName.isEmpty {
                                Text(friend.lastName)
                                    .font(.system(size: 17, weight: .semibold))
                            }
                        }
                        .foregroundStyle(.primary)
                    }

                    if let subtitle = subtitle {
                        Text(subtitle)
                            .font(.system(size: 15))
                            .foregroundStyle(.secondary)
                    }
                }
            }

            Spacer()

            // Geocoding status indicator
            if let geoStatus = geocodingStatus {
                geoStatus.icon
                    .font(.system(size: 16))
                    .foregroundStyle(geoStatus.color)
            }
        }
        .contentShape(Rectangle())
    }

    // MARK: - Avatar View

    @ViewBuilder
    private var avatarView: some View {
        if let photoData = friend.photoData, let uiImage = UIImage(data: photoData) {
            // Photo avatar
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        } else if friend.isCompany {
            // Company/organization icon
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(uiColor: .systemGray4))
                    .frame(width: 40, height: 40)
                Image(systemName: "building.2")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
            }
        } else {
            // Initials placeholder for person
            ZStack {
                Circle()
                    .fill(Color(uiColor: .systemGray4))
                    .frame(width: 40, height: 40)
                Text(initials)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(.white)
            }
        }
    }

    // MARK: - Computed Properties

    /// Display name for the contact - intelligently handles edge cases
    private var displayName: String {
        // For companies, prefer organizationName, then fall back to person names
        if friend.isCompany {
            if let orgName = friend.organizationName, !orgName.isEmpty {
                return orgName
            }
            // Fallback: use person name fields if org name is empty
            let nameParts = [friend.firstName, friend.middleName, friend.lastName]
                .compactMap { $0 }
                .filter { !$0.isEmpty }
            return nameParts.joined(separator: " ")
        }

        // For persons, construct full name
        let nameParts = [friend.firstName, friend.middleName, friend.lastName]
            .compactMap { $0 }
            .filter { !$0.isEmpty }
        let fullName = nameParts.joined(separator: " ")

        // If no personal names, fall back to organization name
        if fullName.isEmpty, let orgName = friend.organizationName, !orgName.isEmpty {
            return orgName
        }

        return fullName
    }

    private var initials: String {
        // Try to get initials from firstName and lastName
        let firstInitial = friend.firstName.prefix(1)
        let lastInitial = friend.lastName.prefix(1)
        let nameInitials = "\(firstInitial)\(lastInitial)".uppercased()

        // If we have at least one initial, use it
        if !nameInitials.isEmpty {
            return nameInitials
        }

        // Fallback: try to get initials from organization name
        if let orgName = friend.organizationName, !orgName.isEmpty {
            let words = orgName.split(separator: " ")
            if words.count >= 2 {
                return "\(words[0].prefix(1))\(words[1].prefix(1))".uppercased()
            } else {
                return String(orgName.prefix(2)).uppercased()
            }
        }

        return "?"
    }

    private var subtitle: String? {
        // For person contacts: show organization name if different from display name
        if !friend.isCompany,
           let organization = friend.organizationName, !organization.isEmpty,
           !friend.firstName.isEmpty || !friend.lastName.isEmpty {
            return organization
        }
        return nil
    }

    private var companySubtitle: String? {
        // For company contacts: show person name if org name was used as primary
        if friend.isCompany,
           let orgName = friend.organizationName, !orgName.isEmpty,
           (!friend.firstName.isEmpty || !friend.lastName.isEmpty) {
            let nameParts = [friend.firstName, friend.middleName, friend.lastName]
                .compactMap { $0 }
                .filter { !$0.isEmpty }
            let fullName = nameParts.joined(separator: " ")
            return fullName.isEmpty ? nil : fullName
        }
        return nil
    }

    private var geocodingStatus: GeocodingDisplayStatus? {
        let addresses = friend.postalAddresses

        // No addresses - no indicator
        guard !addresses.isEmpty else { return nil }

        let geocodedCount = addresses.filter { $0.hasValidCoordinates }.count
        let totalCount = addresses.count

        if geocodedCount == 0 {
            // None geocoded yet
            return .pending
        } else if geocodedCount == totalCount {
            // All geocoded
            return .complete
        } else {
            // Partially geocoded
            return .partial
        }
    }
}

// MARK: - Geocoding Display Status

private enum GeocodingDisplayStatus {
    case pending    // Has addresses, none geocoded yet
    case partial    // Some addresses geocoded, some not
    case complete   // All addresses geocoded

    var icon: Image {
        switch self {
        case .pending:
            return Image(systemName: "location.slash.fill")
        case .partial:
            return Image(systemName: "location.fill.viewfinder")
        case .complete:
            return Image(systemName: "location.fill")
        }
    }

    var color: Color {
        switch self {
        case .pending:
            return .secondary
        case .partial:
            return .orange
        case .complete:
            return .blue
        }
    }
}

// MARK: - Preview

#Preview("Friend List Rows") {
    List {
        // Sample friends without addresses
        FriendListView(friend: Friend.examples[0])

        // Sample friend with address pending geocoding
        FriendListView(friend: {
            let friend = Friend.examples[1]
            friend.postalAddresses = [
                LabeledPostalAddress(
                    label: "home",
                    street: "123 Main St",
                    city: "San Francisco",
                    state: "CA",
                    postalCode: "94102",
                    country: "USA"
                )
            ]
            return friend
        }())

        // Sample friend with address partially geocoded
        FriendListView(friend: {
            let friend = Friend.examples[2]
            friend.postalAddresses = [
                LabeledPostalAddress(
                    label: "home",
                    street: "456 Oak Ave",
                    city: "New York",
                    state: "NY",
                    postalCode: "10001",
                    country: "USA",
                    latitude: 40.7128,
                    longitude: -74.0060,
                    needsGeocoding: false
                ),
                LabeledPostalAddress(
                    label: "work",
                    street: "789 Broadway",
                    city: "New York",
                    state: "NY",
                    postalCode: "10003",
                    country: "USA"
                )
            ]
            return friend
        }())

        // Sample friend with all addresses geocoded
        FriendListView(friend: {
            let friend = Friend.examples[3]
            friend.postalAddresses = [
                LabeledPostalAddress(
                    label: "home",
                    street: "1 Infinite Loop",
                    city: "Cupertino",
                    state: "CA",
                    postalCode: "95014",
                    country: "USA",
                    latitude: 37.3318,
                    longitude: -122.0312,
                    needsGeocoding: false
                )
            ]
            return friend
        }())
    }
    .listStyle(.plain)
}
