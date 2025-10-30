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

## Performance Optimization Strategies

### Current Problem
With 3000+ friends, rendering all map markers simultaneously causes severe performance degradation and makes the map unusable. The app becomes slow, unresponsive, and consumes excessive memory.

### Strategy 1: Annotation Clustering ⭐ **RECOMMENDED**
**Description**: Group nearby annotations into cluster markers showing the count of friends in that area. As user zooms in, clusters split into smaller groups or individual markers.

**Implementation**:
- Use MapKit's built-in `MKClusterAnnotation` support
- Configure minimum zoom level before de-clustering
- Show count badge on cluster markers
- Smooth animations when clusters expand/collapse

**Pros**:
- Native MapKit support (well-tested, performant)
- Reduces rendered markers from 3000+ to ~50-100 clusters
- Industry standard approach (used by Yelp, Airbnb, etc.)
- Maintains full data availability
- No data loss - all friends still accessible

**Cons**:
- Requires zooming to see individual friends
- Initial implementation complexity (moderate)
- May need custom cluster appearance

**Estimated Performance**: Handles 10,000+ annotations smoothly

**Priority**: HIGH - Best balance of performance and UX

---

### Strategy 2: Viewport-Based Filtering
**Description**: Only render annotations that are visible in the current map viewport. As user pans/zooms, dynamically load/unload annotations.

**Implementation**:
- Calculate current map region (lat/lon bounds)
- Filter friendAnnotations to only those within bounds
- Add buffer zone around viewport to enable smooth panning
- Update annotations on significant region changes

**Pros**:
- Dramatically reduces rendered annotations (typically 10-100 visible)
- Simple to implement (filtering logic only)
- Works with any map zoom level
- Very efficient memory usage

**Cons**:
- Friends outside viewport are invisible (no indication they exist)
- User might miss friends just outside view
- Requires careful buffer sizing for smooth panning
- Possible pop-in effect when panning quickly

**Estimated Performance**: Handles 100,000+ annotations (only renders visible ones)

**Priority**: HIGH - Can combine with clustering for best results

---

### Strategy 3: Proximity-Based Loading
**Description**: Only show friends within a certain distance from user's current location. Distant friends are not rendered.

**Implementation**:
- Calculate distance from user location to each friend
- Filter to friends within radius (e.g., 50km, 100km, 500km)
- Provide UI control to adjust radius
- Show count of hidden friends and button to expand radius

**Pros**:
- Focuses on nearby/relevant friends
- Very simple to implement
- Intuitive for "friends nearby" use case
- Excellent performance

**Cons**:
- Cannot see all friends at once (defeats "show all" requirement)
- Useless without user location permission
- Arbitrary radius cutoff might hide important friends
- Requires additional UI for radius control

**Estimated Performance**: Excellent (renders only nearby subset)

**Priority**: MEDIUM - Good for "nearby friends" feature, not global view

---

### Strategy 4: Smart Density Reduction
**Description**: Intelligently reduce annotation density by showing only one friend per geographic area when zoomed out. As user zooms in, more friends appear.

**Implementation**:
- Divide map into grid cells based on zoom level
- Show max N friends per cell (e.g., 1-3 depending on zoom)
- Prioritize friends by criteria: recent contact, favorites, most data
- Show density indicator for hidden friends

**Pros**:
- Maintains global view of friend distribution
- Smooth transition as zoom level changes
- Can prioritize important friends
- Flexible and customizable

**Cons**:
- Complex prioritization logic needed
- May hide important friends arbitrarily
- Requires significant custom implementation
- User might not understand why some friends are hidden

**Estimated Performance**: Good (customizable density limits)

**Priority**: LOW - Complex, arbitrary friend hiding

---

### Strategy 5: Progressive Loading with Simplified Markers
**Description**: Render markers in batches with simplified appearance (dots instead of custom views) when zoomed out. Full detail only when zoomed in.

**Implementation**:
- Use simple circle/dot markers at low zoom levels
- Progressively enhance to full markers as user zooms in
- Batch render annotations (load 100 at a time with delay)
- Use system `Marker` instead of custom `Annotation` views at distance

**Pros**:
- Shows all friends (no data hiding)
- Simpler rendering for distant markers improves performance
- Progressive loading prevents UI freezing
- Native MapKit markers are very performant

**Cons**:
- Still rendering 3000+ markers (performance limited)
- Complex zoom-level-based rendering logic
- May still be slow with 3000+ markers
- Batching causes delayed marker appearance

**Estimated Performance**: Moderate (helps but not sufficient for 3000+)

**Priority**: LOW - Insufficient for the scale of problem

---

### Strategy 6: Server-Side Clustering (Future)
**Description**: Pre-compute clusters on backend/CloudKit, serve clustered data to app. App only renders pre-computed clusters.

**Implementation**:
- Backend service computes clusters for different zoom levels
- App requests cluster data for current viewport + zoom
- Cache cluster data locally
- Update clusters on data changes

**Pros**:
- Extremely performant (minimal client computation)
- Consistent clustering across devices
- Scales to millions of annotations
- Can use advanced clustering algorithms

**Cons**:
- Requires backend infrastructure (not applicable for local-only data)
- Network dependency for cluster updates
- Added complexity and cost
- Overkill for client-side data

**Estimated Performance**: Excellent (enterprise-scale)

**Priority**: N/A - Not applicable for local SwiftData architecture

---

##  Implementation Plan

### Add Clustering (4-6 hours)
Add MapKit clustering for production-quality solution:
1. Convert to use MKAnnotation with clustering support
2. Configure cluster appearance and behavior
3. Handle cluster tap to zoom into cluster
4. Test cluster splitting/merging animations

**Expected Result**: Smooth map experience at all zoom levels, industry-standard UX

Implement this, and see from there...

---
