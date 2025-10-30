//
//  FriendzApp.swift
//  Friendz
//
//  Created by Till Gartner on 28.10.25.
//

import SwiftData
import SwiftUI

@main
struct FriendzApp: App {
    @State private var contactsManager = ContactsManager()
    @State private var activityStatusManager = ActivityStatusManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(contactsManager)
                .environment(activityStatusManager)
        }
        .modelContainer(for: Friend.self) { result in
            switch result {
            case .success:
                // Configure CloudKit sync for Friend model
                // CloudKit will automatically sync Friend data across devices
                print("Model container initialized with CloudKit sync")

                // Wire up activity status manager to contacts manager
                contactsManager.activityStatusManager = activityStatusManager
            case .failure(let error):
                print("Failed to initialize model container: \(error)")
            }
        }
    }
}
