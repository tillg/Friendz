//
//  MapView.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import SwiftUI
import SwiftData
import MapKit

/// Helper to make UUID work with navigationDestination
extension UUID: @retroactive Identifiable {
    public var id: UUID { self }
}

/// Map view showing friends' locations
struct MapView: View {
    @Query(filter: #Predicate<Friend> { !$0.isDeleted })
    var friends: [Friend]

    @StateObject private var locationManager = LocationManager()
    @State private var selectedFriendId: UUID?
    @State private var centerOnUser = false

    var body: some View {
        ZStack {
            // Clustered map with friend annotations
            ClusteredMapView(
                annotations: friendAnnotations,
                userLocation: locationManager.userLocation,
                selectedFriendId: $selectedFriendId,
                centerOnUser: $centerOnUser
            )
            .edgesIgnoringSafeArea(.all)

            // Empty state overlay
            if friendAnnotations.isEmpty {
                VStack(spacing: 16) {
                    Image(systemName: "map")
                        .font(.system(size: 60))
                        .foregroundStyle(.secondary)
                    Text("No friend locations available")
                        .font(.headline)
                    Text("Add addresses to your contacts to see them on the map.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
                .padding()
            }

            // Location button overlay
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        centerOnUser = true
                    } label: {
                        Image(systemName: "location.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 44, height: 44)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 2)
                    }
                    .padding(.trailing, 16)
                    .padding(.bottom, 16)
                }
            }

            // Location permission message
            if locationManager.authorizationStatus == .denied || locationManager.authorizationStatus == .restricted {
                VStack {
                    Spacer()
                    HStack {
                        Image(systemName: "location.slash")
                            .foregroundStyle(.secondary)
                        Text("Location access denied")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Button("Settings") {
                            if let url = URL(string: UIApplication.openSettingsURLString) {
                                UIApplication.shared.open(url)
                            }
                        }
                        .font(.subheadline)
                    }
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
                    .padding()
                }
            }
        }
        .navigationTitle("Map")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            locationManager.requestPermission()
        }
        .navigationDestination(item: $selectedFriendId) { friendId in
            if let friend = friends.first(where: { $0.id == friendId }) {
                FriendView(friend: friend)
            }
        }
    }

    // MARK: - Computed Properties

    /// Generate annotations from friends with geocoded addresses
    private var friendAnnotations: [FriendAnnotation] {
        var annotations: [FriendAnnotation] = []

        for friend in friends {
            for (index, address) in friend.postalAddresses.enumerated() {
                // Only include addresses with valid coordinates
                if let latitude = address.latitude,
                   let longitude = address.longitude,
                   latitude != 0 || longitude != 0 {
                    let annotation = FriendAnnotation(
                        friend: friend,
                        addressIndex: index,
                        address: address
                    )
                    annotations.append(annotation)
                }
            }
        }

        return annotations
    }
}

#Preview {
    MapView()
}
