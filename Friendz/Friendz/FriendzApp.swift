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
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Friend.self)
    }
}
