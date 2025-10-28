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

    var body: some View {
        NavigationStack {
            VStack {
                // Loading indicator
                if contactsManager.isLoading {
                    HStack {
                        ProgressView()
                            .padding(.trailing, 8)
                        Text("Syncing contacts...")
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                }

                // Friends list
                List(friends) { friend in
                    VStack(alignment: .leading) {
                        Text("\(friend.firstName) \(friend.lastName)")
                            .font(.headline)

                        if let middleName = friend.middleName, !middleName.isEmpty {
                            Text(middleName)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }

                        if !friend.phoneNumbers.isEmpty {
                            Text(friend.phoneNumbers.first?.value ?? "")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Friendz")
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
