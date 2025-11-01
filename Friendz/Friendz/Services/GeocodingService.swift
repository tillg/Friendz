//
//  GeocodingService.swift
//  Friendz
//
//  Created by Claude on 29.10.25.
//

import Foundation
import MapKit

/// Result of a geocoding operation with validation metadata
struct GeocodingResult {
    let latitude: Double
    let longitude: Double
    let addressHash: String
    let geocodedDate: Date
}

/// Service that wraps MKGeocodingRequest for converting addresses to coordinates
actor GeocodingService {
    private var currentRequest: MKGeocodingRequest?

    /// Geocodes a postal address and returns coordinates with validation metadata
    /// - Parameter address: The postal address to geocode
    /// - Returns: GeocodingResult containing coordinates, hash, and timestamp
    /// - Throws: Error if geocoding fails
    func geocode(address: LabeledPostalAddress) async throws -> GeocodingResult {
        // Build the address string for geocoding
        let addressString = [
            address.street,
            address.city,
            address.state,
            address.postalCode,
            address.country
        ]
        .filter { !$0.isEmpty }
        .joined(separator: ", ")

        guard !addressString.isEmpty else {
            throw GeocodingError.emptyAddress
        }

        // Create geocoding request
        guard let request = MKGeocodingRequest(addressString: addressString) else {
            throw GeocodingError.invalidAddress
        }

        currentRequest = request

        // Perform geocoding
        let mapItems = try await request.mapItems

        guard let mapItem = mapItems.first else {
            throw GeocodingError.noResults
        }

        let location = mapItem.location
        return GeocodingResult(
            latitude: location.coordinate.latitude,
            longitude: location.coordinate.longitude,
            addressHash: address.addressHash,
            geocodedDate: Date()
        )
    }

    /// Checks if the geocoder is currently geocoding
    var isGeocoding: Bool {
        currentRequest?.isLoading ?? false
    }

    /// Cancels any pending geocoding requests
    func cancelGeocode() {
        currentRequest?.cancel()
        currentRequest = nil
    }
}

// MARK: - Errors

enum GeocodingError: LocalizedError {
    case emptyAddress
    case invalidAddress
    case noResults
    case rateLimited

    var errorDescription: String? {
        switch self {
        case .emptyAddress:
            return "Address is empty"
        case .invalidAddress:
            return "Invalid address format"
        case .noResults:
            return "No geocoding results found"
        case .rateLimited:
            return "Geocoding rate limit exceeded"
        }
    }
}
