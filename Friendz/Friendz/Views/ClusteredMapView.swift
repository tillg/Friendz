//
//  ClusteredMapView.swift
//  Friendz
//
//  Created by Claude Code on 30.10.25.
//

import SwiftUI
import MapKit
import CoreLocation

/// UIViewRepresentable wrapper for MKMapView with clustering support
struct ClusteredMapView: UIViewRepresentable {
    let annotations: [FriendAnnotation]
    let userLocation: CLLocation?
    @Binding var selectedFriendId: UUID?

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.showsUserLocation = true
        mapView.showsCompass = true
        mapView.showsScale = true

        // Register annotation view with clustering
        mapView.register(
            FriendAnnotationView.self,
            forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier
        )
        mapView.register(
            ClusterAnnotationView.self,
            forAnnotationViewWithReuseIdentifier: MKMapViewDefaultClusterAnnotationViewReuseIdentifier
        )

        return mapView
    }

    func updateUIView(_ mapView: MKMapView, context: Context) {
        // Update annotations
        updateAnnotations(on: mapView)

        // Update camera position if needed
        if context.coordinator.needsCameraUpdate {
            updateCameraPosition(mapView)
            context.coordinator.needsCameraUpdate = false
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(selectedFriendId: $selectedFriendId)
    }

    // MARK: - Helper Methods

    private func updateAnnotations(on mapView: MKMapView) {
        // Get current annotations (excluding user location)
        let currentAnnotations = mapView.annotations.compactMap { $0 as? FriendAnnotation }
        let currentIds = Set(currentAnnotations.map { $0.id })
        let newIds = Set(annotations.map { $0.id })

        // Remove annotations that are no longer in the list
        let toRemove = currentAnnotations.filter { !newIds.contains($0.id) }
        if !toRemove.isEmpty {
            mapView.removeAnnotations(toRemove)
        }

        // Add new annotations
        let toAdd = annotations.filter { !currentIds.contains($0.id) }
        if !toAdd.isEmpty {
            mapView.addAnnotations(toAdd)
        }
    }

    private func updateCameraPosition(_ mapView: MKMapView) {
        if let userLocation = userLocation {
            // Center on user location with nearby friends
            let region = MKCoordinateRegion(
                center: userLocation.coordinate,
                latitudinalMeters: 5000,
                longitudinalMeters: 5000
            )
            mapView.setRegion(region, animated: true)
        } else if !annotations.isEmpty {
            // No user location, fit all friends
            let coordinates = annotations.map { $0.coordinate }

            // Filter out invalid coordinates (0,0 or extreme values)
            let validCoordinates = coordinates.filter { coord in
                coord.latitude >= -90 && coord.latitude <= 90 &&
                coord.longitude >= -180 && coord.longitude <= 180 &&
                !(coord.latitude == 0 && coord.longitude == 0)
            }

            guard !validCoordinates.isEmpty else { return }

            let minLat = validCoordinates.map { $0.latitude }.min()!
            let maxLat = validCoordinates.map { $0.latitude }.max()!
            let minLon = validCoordinates.map { $0.longitude }.min()!
            let maxLon = validCoordinates.map { $0.longitude }.max()!

            let center = CLLocationCoordinate2D(
                latitude: (minLat + maxLat) / 2,
                longitude: (minLon + maxLon) / 2
            )

            // Calculate span with padding, but clamp to reasonable values
            var latDelta = (maxLat - minLat) * 1.5
            var lonDelta = (maxLon - minLon) * 1.5

            // Ensure minimum span (for single point or very close points)
            latDelta = max(latDelta, 0.01)
            lonDelta = max(lonDelta, 0.01)

            // Ensure maximum span (prevent world-spanning regions)
            latDelta = min(latDelta, 180.0)
            lonDelta = min(lonDelta, 360.0)

            let span = MKCoordinateSpan(
                latitudeDelta: latDelta,
                longitudeDelta: lonDelta
            )

            let region = MKCoordinateRegion(center: center, span: span)
            mapView.setRegion(region, animated: true)
        }
    }

    // MARK: - Coordinator

    class Coordinator: NSObject, MKMapViewDelegate {
        @Binding var selectedFriendId: UUID?
        var needsCameraUpdate = true

        init(selectedFriendId: Binding<UUID?>) {
            _selectedFriendId = selectedFriendId
        }

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            // Don't customize user location
            guard let annotation = annotation as? FriendAnnotation else {
                return nil
            }

            let view = mapView.dequeueReusableAnnotationView(
                withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier,
                for: annotation
            ) as! FriendAnnotationView

            view.configure(with: annotation)
            return view
        }

        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            if let annotation = view.annotation as? FriendAnnotation {
                selectedFriendId = annotation.friendId
            } else if let cluster = view.annotation as? MKClusterAnnotation {
                // Zoom into cluster
                let region = MKCoordinateRegion(
                    center: cluster.coordinate,
                    latitudinalMeters: 1000,
                    longitudinalMeters: 1000
                )
                mapView.setRegion(region, animated: true)
            }
        }
    }
}

// MARK: - Custom Annotation View

class FriendAnnotationView: MKAnnotationView {
    static let clusteringIdentifier = "friendCluster"

    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)

        // Enable clustering
        clusteringIdentifier = FriendAnnotationView.clusteringIdentifier

        // Configure appearance
        displayPriority = .required
        canShowCallout = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with annotation: FriendAnnotation) {
        // Create custom view
        let size: CGFloat = 40
        let view = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))

        // Background circle
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = size / 2
        view.clipsToBounds = true

        // Icon or initials
        if annotation.isCompany {
            let imageView = UIImageView(frame: view.bounds)
            imageView.contentMode = .center
            imageView.tintColor = .white

            let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular)
            imageView.image = UIImage(systemName: annotation.symbolName, withConfiguration: config)

            view.addSubview(imageView)
        } else {
            let label = UILabel(frame: view.bounds)
            label.text = annotation.initials
            label.textAlignment = .center
            label.textColor = .white
            label.font = .systemFont(ofSize: 14, weight: .semibold)

            view.addSubview(label)
        }

        // Set as image
        let renderer = UIGraphicsImageRenderer(bounds: view.bounds)
        let image = renderer.image { context in
            view.layer.render(in: context.cgContext)
        }

        self.image = image
        self.centerOffset = CGPoint(x: 0, y: -size / 2)
    }
}

// MARK: - Cluster Annotation View

class ClusterAnnotationView: MKAnnotationView {
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)

        displayPriority = .required
        canShowCallout = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForDisplay() {
        super.prepareForDisplay()

        guard let cluster = annotation as? MKClusterAnnotation else { return }

        let count = cluster.memberAnnotations.count

        // Create cluster view
        let size: CGFloat = 50
        let view = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))

        // Background circle
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = size / 2
        view.clipsToBounds = true

        // Add border for emphasis
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor

        // Count label
        let label = UILabel(frame: view.bounds)
        label.text = "\(count)"
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .bold)

        view.addSubview(label)

        // Set as image
        let renderer = UIGraphicsImageRenderer(bounds: view.bounds)
        let image = renderer.image { context in
            view.layer.render(in: context.cgContext)
        }

        self.image = image
        self.centerOffset = CGPoint(x: 0, y: -size / 2)
    }
}
