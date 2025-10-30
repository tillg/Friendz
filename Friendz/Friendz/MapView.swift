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
    @State private var cameraPosition: MapCameraPosition = .automatic
    @State private var selectedAnnotation: FriendAnnotation?
    @State private var selectedFriendId: UUID?

    var body: some View {
        ZStack {
            // Map with friend annotations
            Map(position: $cameraPosition) {
                mapContent
            }
            .mapStyle(.standard)
            .mapControls {
                MapUserLocationButton()
                MapCompass()
                MapScaleView()
            }

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
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    fitAllFriends()
                } label: {
                    Label("Fit All", systemImage: "arrow.up.left.and.arrow.down.right")
                }
                .disabled(friendAnnotations.isEmpty)
            }
        }
        .onAppear {
            locationManager.requestPermission()
            updateCameraPosition()
        }
        .onChange(of: locationManager.userLocation) { _, _ in
            updateCameraPosition()
        }
        .onChange(of: friendAnnotations) { _, _ in
            updateCameraPosition()
        }
        .navigationDestination(item: $selectedFriendId) { friendId in
            if let friend = friends.first(where: { $0.id == friendId }) {
                FriendView(friend: friend)
            }
        }
    }

    // MARK: - Map Content

    @MapContentBuilder
    private var mapContent: some MapContent {
        // User location marker
        if let userLocation = locationManager.userLocation {
            Marker("My Location", systemImage: "location.fill", coordinate: userLocation.coordinate)
                .tint(.blue)
        }

        // Friend location annotations
        ForEach(friendAnnotations) { annotation in
            Annotation(annotation.title, coordinate: annotation.coordinate) {
                annotationView(for: annotation)
                    .onTapGesture {
                        selectedFriendId = annotation.friendId
                    }
            }
        }
    }

    @ViewBuilder
    private func annotationView(for annotation: FriendAnnotation) -> some View {
        ZStack {
            // Background circle
            Circle()
                .fill(Color.blue)
                .frame(width: 40, height: 40)

            // Icon or initials
            if annotation.isCompany {
                Image(systemName: annotation.symbolName)
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
            } else {
                Text(annotation.initials)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
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

    // MARK: - Camera Methods

    /// Update camera position based on user location and friends
    private func updateCameraPosition() {
        if let userLocation = locationManager.userLocation {
            // Center on user location with nearby friends
            let region = MKCoordinateRegion(
                center: userLocation.coordinate,
                latitudinalMeters: 5000,
                longitudinalMeters: 5000
            )
            cameraPosition = .region(region)
        } else if !friendAnnotations.isEmpty {
            // No user location, fit all friends
            fitAllFriends()
        }
    }

    /// Fit all friend annotations in view
    private func fitAllFriends() {
        guard !friendAnnotations.isEmpty else { return }

        let coordinates = friendAnnotations.map { $0.coordinate }

        // Calculate bounding box
        let minLat = coordinates.map { $0.latitude }.min() ?? 0
        let maxLat = coordinates.map { $0.latitude }.max() ?? 0
        let minLon = coordinates.map { $0.longitude }.min() ?? 0
        let maxLon = coordinates.map { $0.longitude }.max() ?? 0

        let center = CLLocationCoordinate2D(
            latitude: (minLat + maxLat) / 2,
            longitude: (minLon + maxLon) / 2
        )

        let span = MKCoordinateSpan(
            latitudeDelta: (maxLat - minLat) * 1.5, // Add 50% padding
            longitudeDelta: (maxLon - minLon) * 1.5
        )

        let region = MKCoordinateRegion(center: center, span: span)
        cameraPosition = .region(region)
    }
}

#Preview {
    MapView()
}
