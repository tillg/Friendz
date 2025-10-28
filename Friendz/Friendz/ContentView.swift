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
    @Query var friends: [Friend]
    
    var body: some View {
        NavigationStack {
            List(friends) { friend in
                Text("\(friend.firstName), \(friend.lastName)")
            }
            .navigationTitle("Friendz")
        }
    }
}

#Preview {
    ContentView()
}
