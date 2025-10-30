//
//  LocationManager.swift
//  Friendz
//
//  Created by Claude Code on 29.10.25.
//

import Foundation
import CoreLocation
import Combine

/// Manager for handling user location services
@MainActor
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()

    // Published properties
    @Published var userLocation: CLLocation?
    @Published var authorizationStatus: CLAuthorizationStatus = .notDetermined
    @Published var errorMessage: String?

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 100 // Update every 100 meters
    }

    /// Request location permission
    func requestPermission() {
        locationManager.requestWhenInUseAuthorization()
    }

    /// Start updating location
    func startUpdating() {
        locationManager.startUpdatingLocation()
    }

    /// Stop updating location
    func stopUpdating() {
        locationManager.stopUpdatingLocation()
    }

    // MARK: - CLLocationManagerDelegate

    nonisolated func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        Task { @MainActor in
            if let location = locations.last {
                self.userLocation = location
            }
        }
    }

    nonisolated func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        Task { @MainActor in
            self.errorMessage = "Location error: \(error.localizedDescription)"
        }
    }

    nonisolated func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        Task { @MainActor in
            self.authorizationStatus = manager.authorizationStatus

            switch manager.authorizationStatus {
            case .authorizedWhenInUse, .authorizedAlways:
                self.startUpdating()
            case .denied, .restricted:
                self.errorMessage = "Location access denied. Enable it in Settings to center the map on your location."
            case .notDetermined:
                break
            @unknown default:
                break
            }
        }
    }
}
