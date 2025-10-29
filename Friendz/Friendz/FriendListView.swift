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
}

// MARK: - Preview

#Preview("Friend List Rows") {
    List {
        ForEach(Friend.examples.shuffled().prefix(5)) { friend in
            FriendListView(friend: friend)
        }
    }
    .listStyle(.plain)
}
