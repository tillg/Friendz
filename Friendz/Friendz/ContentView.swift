//
//  ContentView.swift
//  Friendz
//
//  Created by Till Gartner on 28.10.25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(ContactsManager.self) var contactsManager

    // Query friends, filtering out deleted ones
    @Query(filter: #Predicate<Friend> { !$0.isDeleted }, sort: \Friend.firstName)
    var friends: [Friend]

    @State private var showingErrorAlert = false

    // Group friends by first letter of first name
    private var groupedFriends: [(String, [Friend])] {
        let grouped = Dictionary(grouping: friends) { friend in
            String(friend.firstName.prefix(1).uppercased())
        }
        return grouped.sorted { $0.key < $1.key }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Loading indicator
                if contactsManager.isLoading {
                    HStack {
                        ProgressView()
                            .padding(.trailing, 8)
                        Text("Syncing contacts...")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .systemBackground))
                }

                // Friends list with sections
                List {
                    ForEach(groupedFriends, id: \.0) { section in
                        Section {
                            ForEach(section.1) { friend in
                                ContactRow(friend: friend)
                            }
                        } header: {
                            Text(section.0)
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .listStyle(.plain)
                .scrollIndicators(.hidden)
            }
            .navigationTitle("Contacts")
            .task {
                // Sync contacts when view appears
                await contactsManager.syncContacts(modelContext: modelContext)
            }
            .alert("Sync Error", isPresented: $showingErrorAlert) {
                Button("OK", role: .cancel) { }
                if contactsManager.errorMessage?.contains("denied") == true {
                    Button("Open Settings") {
                        if let url = URL(string: UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(url)
                        }
                    }
                }
            } message: {
                if let errorMessage = contactsManager.errorMessage {
                    Text(errorMessage)
                }
            }
            .onChange(of: contactsManager.errorMessage) { _, newValue in
                showingErrorAlert = newValue != nil
            }
        }
    }
}

// MARK: - Contact Row

struct ContactRow: View {
    let friend: Friend

    var body: some View {
        HStack(spacing: 12) {
            // Avatar (photo or initials)
            if let photoData = friend.photoData, let uiImage = UIImage(data: photoData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            } else {
                // Initials placeholder
                ZStack {
                    Circle()
                        .fill(Color(uiColor: .systemGray4))
                        .frame(width: 40, height: 40)
                    Text(initials)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.white)
                }
            }

            // Contact info
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

            Spacer()
        }
        .contentShape(Rectangle())
    }

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

#Preview {
    ContentView()
        .environment(ContactsManager())
}
