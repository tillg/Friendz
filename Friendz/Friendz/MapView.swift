//
//  MapView.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import SwiftUI
import SwiftData
import MapKit

/// Map view showing friends' locations
struct MapView: View {
    @Query(filter: #Predicate<Friend> { !$0.isDeleted })
    var friends: [Friend]

    var body: some View {
        ZStack {
            // Placeholder map - will be implemented later
            Map()
                .mapStyle(.standard)

            // Overlay with info text
            VStack {
                Spacer()
                Text("Map functionality coming soon")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
                    .padding()
                Spacer()
            }
        }
        .navigationTitle("Map")
    }
}

#Preview {
    MapView()
}
