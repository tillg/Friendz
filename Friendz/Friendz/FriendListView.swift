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
                // Company contact: organization name only, bold
                Text(friend.organizationName ?? "")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.primary)
            } else {
                // Person contact: name with optional organization subtitle
                VStack(alignment: .leading, spacing: 2) {
                    // Name with bold last name
                    HStack(spacing: 4) {
                        Text(friend.firstName)
                            .font(.system(size: 17))
                        if let middleName = friend.middleName, !middleName.isEmpty {
                            Text(middleName)
                                .font(.system(size: 17))
                        }
                        Text(friend.lastName)
                            .font(.system(size: 17, weight: .semibold))
                    }
                    .foregroundStyle(.primary)

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

    private var initials: String {
        let firstInitial = friend.firstName.prefix(1)
        let lastInitial = friend.lastName.prefix(1)
        return "\(firstInitial)\(lastInitial)".uppercased()
    }

    private var subtitle: String? {
        // Only show organization name, never phone or email
        if let organization = friend.organizationName, !organization.isEmpty {
            return organization
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
