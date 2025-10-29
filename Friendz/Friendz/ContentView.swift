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

    // Query friends, filtering out deleted ones (no sort in query, we'll sort manually)
    @Query(filter: #Predicate<Friend> { !$0.isDeleted })
    var friends: [Friend]

    @State private var showingErrorAlert = false

    // Sort friends by sortValue and group by first letter
    private var groupedFriends: [(String, [Friend])] {
        // Sort friends by sortValue
        let sortedFriends = friends.sorted { $0.sortValue.localizedCaseInsensitiveCompare($1.sortValue) == .orderedAscending }

        // Group by first letter of sortValue
        let grouped = Dictionary(grouping: sortedFriends) { friend in
            String(friend.sortValue.prefix(1).uppercased())
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
                                FriendListView(friend: friend)
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

#Preview {
    ContentView()
        .environment(ContactsManager())
}
