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

    // Create ModelContainer with CloudKit configuration
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(contactsManager)
                .environment(activityStatusManager)
                .onAppear {
                    // Wire up activity status manager to contacts manager
                    contactsManager.activityStatusManager = activityStatusManager
                }
        }
        .modelContainer(for: Friend.self)
    }
}
