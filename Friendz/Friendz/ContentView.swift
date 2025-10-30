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
    @Environment(ActivityStatusManager.self) var activityStatusManager

    // Query friends, filtering out deleted ones (no sort in query, we'll sort manually)
    @Query(filter: #Predicate<Friend> { !$0.isDeleted })
    var friends: [Friend]

    @State private var showingErrorAlert = false
    @State private var geocodingManager: GeocodingManager?

    var body: some View {
        NavigationSplitView {
            // Sidebar: Friends list (left on iPad, navigable on iPhone)
            friendsListView
        } detail: {
            // Detail: Map view (right on iPad, destination on iPhone)
            MapView()
        }
        .task {
            // Initialize geocoding manager if not already created
            if geocodingManager == nil {
                let manager = GeocodingManager(modelContext: modelContext)
                manager.activityStatusManager = activityStatusManager
                geocodingManager = manager
            }

            // Sync contacts when view appears
            await contactsManager.syncContacts(modelContext: modelContext)

            // After syncing, scan for addresses that need geocoding
            geocodingManager?.scanAndEnqueueFriends()
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

    // MARK: - Friends List View

    private var friendsListView: some View {
        VStack(spacing: 0) {
            // Activity Status Bar
            ActivityStatusBar()

            // Friends list with sections
            List {
                ForEach(groupedFriends, id: \.0) { section in
                    Section {
                        ForEach(section.1) { friend in
                            NavigationLink(destination: FriendView(friend: friend)) {
                                FriendListView(friend: friend)
                            }
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
        .safeAreaInset(edge: .top, spacing: 0) {
            FriendzHeaderView()
        }
        .navigationTitle("")
        .toolbar {
            // Map button
            ToolbarItem(placement: .primaryAction) {
                NavigationLink(destination: MapView()) {
                    Label("Map", systemImage: "map")
                }
            }
        }
    }

    // MARK: - Computed Properties

    // Sort friends and group by first letter
    // Note: Sorting logic is defined in Friend's Comparable conformance
    private var groupedFriends: [(String, [Friend])] {
        // Sort friends using Friend's Comparable conformance (letters first, then numbers)
        let sortedFriends = friends.sorted()

        // Group by section key (first letter or "#" for numbers)
        let grouped = Dictionary(grouping: sortedFriends) { $0.sectionKey }

        // Sort sections: letters first (A-Z), then "#" for numbers
        return grouped.sorted { section1, section2 in
            if section1.key == "#" {
                return false  // "#" goes to the end
            } else if section2.key == "#" {
                return true   // "#" goes to the end
            }
            return section1.key < section2.key
        }
    }
}

#Preview {
    ContentView()
        .environment(ContactsManager())
}
