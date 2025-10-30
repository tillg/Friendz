//
//  GeocodingStatusIcon.swift
//  Friendz
//
//  Created by Till Gartner on 30.10.25.
//

import SwiftUI

/// Icon that displays the geocoding status of an address with color-coded badges
struct GeocodingStatusIcon: View {
    let address: LabeledPostalAddress

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // Base location icon (always gray)
            Image(systemName: "location.fill")
                .font(.system(size: 18))
                .foregroundStyle(.gray)
                .frame(width: 20, height: 20)

            // Badge overlay based on status
            badgeIcon
                .font(.system(size: 11, weight: .bold))
                .foregroundStyle(.white)
                .frame(width: 16, height: 16)
                .background(
                    Circle()
                        .fill(badgeColor)
                )
                .offset(x: 6, y: 6)
        }
        .frame(width: 20, height: 20)
    }

    // MARK: - Computed Properties

    /// The badge icon based on geocoding status
    private var badgeIcon: some View {
        Group {
            switch geocodingState {
            case .pending:
                Image(systemName: "questionmark")
            case .success:
                Image(systemName: "checkmark")
            case .failed:
                Image(systemName: "xmark")
            }
        }
    }

    /// The badge color based on geocoding status
    private var badgeColor: Color {
        switch geocodingState {
        case .pending:
            return .orange
        case .success:
            return Color.friendzGreen
        case .failed:
            return .red
        }
    }

    /// Determine the geocoding state
    private var geocodingState: GeocodingState {
        if address.hasValidCoordinates {
            return .success
        } else if address.needsGeocoding {
            return .pending
        } else {
            return .failed
        }
    }

    // MARK: - Supporting Types

    private enum GeocodingState {
        case pending    // Has address but not geocoded yet
        case success    // Successfully geocoded
        case failed     // Geocoding failed
    }
}

// MARK: - Preview

#Preview("All States") {
    VStack(spacing: 30) {
        // Pending state
        HStack {
            GeocodingStatusIcon(address: LabeledPostalAddress(
                label: "home",
                street: "123 Main St",
                city: "San Francisco",
                state: "CA",
                postalCode: "94102",
                country: "USA",
                needsGeocoding: true
            ))
            Text("Pending geocoding")
        }

        // Success state
        HStack {
            GeocodingStatusIcon(address: LabeledPostalAddress(
                label: "work",
                street: "456 Market St",
                city: "San Francisco",
                state: "CA",
                postalCode: "94105",
                country: "USA",
                latitude: 37.7749,
                longitude: -122.4194,
                needsGeocoding: false
            ))
            Text("Successfully geocoded")
        }

        // Failed state
        HStack {
            GeocodingStatusIcon(address: LabeledPostalAddress(
                label: "other",
                street: "Invalid Address XYZ",
                city: "Nowhere",
                state: "XX",
                postalCode: "00000",
                country: "Invalid",
                needsGeocoding: false
            ))
            Text("Geocoding failed")
        }
    }
    .padding()
}
