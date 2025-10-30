# FEATURE: Map

## Overview
Display all friends' locations as pins on an interactive map, centered on the user's current location by default.

## User Requirements
1. See friend locations as pins on the map
2. By default all friends should be visible
3. Map should open centered at user's current location

## Technical Architecture

### Core Components
- **MapView**: Main map view using SwiftUI MapKit
- **LocationManager**: ObservableObject wrapping CLLocationManager for user location
- **FriendAnnotation**: Data structure representing friend locations on map

### Data Flow
1. Query friends from SwiftData (existing @Query in MapView)
2. Filter friends with geocoded addresses (latitude/longitude not nil)
3. Transform each geocoded address into a FriendAnnotation
4. Display annotations on map with custom markers

### Map Behavior
- **Initial Position**: Center on user's current location (if permission granted)
- **Fallback**: If no location permission, show all friend pins in viewport
- **Multiple Addresses**: Show all geocoded addresses as separate pins (e.g., home + work)
- **User Location**: Display blue dot for user's current position
- **Zoom Level**: Automatic based on friend distribution

### Pin/Annotation Design
- **Marker Style**: Show friend initials (for persons) or building icon (for companies)
- **Tap Behavior**: Show callout with friend name and address label
- **Detail Navigation**: Button in callout to navigate to FriendView

### Permissions
- **Location Permission**: "When In Use" only (NSLocationWhenInUseUsageDescription)
- **Permission Prompt**: "Friendz needs your location to center the map on your current position"
- **Denied Handling**: Show message with Settings button to enable location

### Map Controls
- **Re-center Button**: Snap back to user location
- **Fit All Friends**: Zoom to show all friend pins
- **Map Type Picker**: Standard / Satellite / Hybrid
- **Friend Count**: Display count of friends shown on map

### Edge Cases
- No geocoded addresses: Show message "No friend locations available. Add addresses to your contacts."
- Geocoding in progress: Show progress indicator
- Invalid coordinates: Skip silently
- Location disabled: Still show friend pins, but no user location dot

## Implementation Tasks

### Phase 1: Core Map (Priority: High)
1. Create LocationManager class for user location tracking
2. Add NSLocationWhenInUseUsageDescription to Info.plist
3. Create FriendAnnotation data structure
4. Implement annotation generation from Friends data
5. Replace MapView placeholder with functional map + annotations

### Phase 2: Camera & Interaction (Priority: High)
6. Configure map camera positioning (user location + friend distribution)
7. Implement annotation tap handling with callouts
8. Add navigation to FriendView from annotation callout

### Phase 3: Controls & Polish (Priority: Medium)
9. Add map toolbar with re-center and fit-all buttons
10. Implement map type picker
11. Add friend count display
12. Handle edge cases and loading states

### Phase 4: Future Enhancements (Priority: Low)
- Annotation clustering for high-density areas
- Search/filter friends on map
- Show address details on long-press
- Offline map tile caching
- Primary address preference per friend

## Open Questions
1. Should we show a preview/thumbnail of the map in FriendView for each address?
2. Do we need to support directions to a friend's location?
3. Should we group multiple addresses for the same friend visually?
4. What's the desired behavior when returning to map after viewing friend details?

## Dependencies
- Existing: Friend model with LabeledPostalAddress (has lat/long fields)
- Existing: GeocodingManager (already geocodes addresses)
- New: CoreLocation framework integration
- New: Location permission in Info.plist

## Technical Risks
1. **Performance**: Many annotations could slow down map rendering (mitigate with clustering)
2. **Geocoding Coverage**: Quality varies by country/region
3. **Network Dependency**: Map tiles require connectivity
4. **Privacy**: Need clear communication about location usage

