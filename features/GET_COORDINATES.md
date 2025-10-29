# FEATURE: Get Coordinates (Geocoding)

## Overview

For every Friend that has one or more postal addresses, we want to geocode those addresses to coordinates (latitude/longitude) so we can display them on a map.

## Requirements

### Core Functionality

* **Geocoding on Demand**: When a new Friend is added or a Friend's address is modified, their addresses should be queued for geocoding
* **Background Service**: A `GeocodingService` handles the translation from addresses to coordinates using Apple's CLGeocoder
* **Non-Blocking**: The geocoding service must not block the UI thread - all geocoding happens asynchronously
* **Queue Management**: A `GeocodingManager` maintains a queue of addresses needing geocoding and processes them with rate limiting
* **Persistence**: Coordinates are stored directly in the Friend model and automatically persisted via SwiftData

### Data Model Changes

* Add optional `latitude: Double?` field to `LabeledPostalAddress` struct
* Add optional `longitude: Double?` field to `LabeledPostalAddress` struct
* Add `needsGeocoding: Bool` field (defaults to `true`)

**That's it!** Simple and clean. Coordinates + one flag.

### Error Handling

* Handle geocoding failures gracefully (invalid addresses, network issues, rate limits)
* Implement retry logic with exponential backoff in `GeocodingManager`
* On failure, keep `needsGeocoding = true` so it can be retried later

## Questions - ANSWERED

### What service can we use to get coordinates from an address?

**Answer**: Use Apple's **CLGeocoder** from the CoreLocation framework.

**Advantages**:
- ✅ Native iOS integration - no external dependencies
- ✅ Free with no API keys required
- ✅ Privacy-respecting (follows iOS privacy model)
- ✅ Uses Apple Maps data
- ✅ Automatic rate limiting built-in
- ✅ Supports both forward (address → coordinates) and reverse (coordinates → address) geocoding

**Rate Limits**: CLGeocoder enforces rate limits automatically. Best practice is to:
- Not make more than 1 request per minute per address
- Queue requests and process sequentially or in small batches
- Handle rate limit errors gracefully

### How do we note that an address changed?

**Answer**: Use a single, simple flag: `needsGeocoding: Bool`

- **Default**: `needsGeocoding = true` (new addresses need geocoding)
- **After successful geocoding**: Geocoding service sets `needsGeocoding = false` and updates coordinates
- **When address is modified**: Set `needsGeocoding = true` again

This can be enforced through:
- Helper methods on `Friend` class (e.g., `updateAddress(at:with:)` that automatically sets the flag)
- Property observers in Swift (didSet on address fields)
- Contact sync code ensuring the flag is set when importing/updating addresses

**Single source of truth**: If `needsGeocoding == true`, the address needs geocoding. Simple.

---

## Implementation Plan

### Phase 1: Data Model Updates

**File**: `Friend.swift`

**Update `LabeledPostalAddress` struct**:

```swift
struct LabeledPostalAddress: Codable, Hashable {
    let label: String
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String

    // Geocoding fields
    var latitude: Double?
    var longitude: Double?
    var needsGeocoding: Bool = true

    // Computed property for convenience
    var hasValidCoordinates: Bool {
        latitude != nil && longitude != nil
    }
}
```

**That's all we need for the data model!**

### Phase 2: Geocoding Service Layer

**New File**: `Services/GeocodingService.swift`

Create a service that:
- Wraps CLGeocoder functionality
- Converts `LabeledPostalAddress` to CLPlacemark query
- Returns coordinates with error handling
- Implements async/await pattern for clean asynchronous code
- Handles rate limiting and errors gracefully

**Key Methods**:
- `func geocode(address: LabeledPostalAddress) async throws -> (latitude: Double, longitude: Double)`
- `func isRateLimited() -> Bool`

### Phase 3: Queue Manager

**New File**: `Services/GeocodingManager.swift`

Create an observable manager that:
- Maintains a queue of friends needing geocoding
- Processes addresses sequentially with rate limiting (1 request per second)
- Updates Friend models with results
- Persists changes through SwiftData ModelContext
- Provides progress tracking for UI feedback

**Key Components**:
- Uses `@Observable` macro for SwiftUI integration
- Maintains queue of pending geocoding tasks
- Implements retry logic with exponential backoff
- Respects CLGeocoder rate limits

**Key Methods**:
- `func enqueueAddress(friend: Friend, addressIndex: Int)`
- `func processQueue()`
- `func retryFailed()`

**Properties** (automatically observable with `@Observable`):
- `var isProcessing: Bool`
- `var queueCount: Int`
- `var successCount: Int`
- `var failedCount: Int`

### Phase 4: Integration with Friend Model

**File**: `Friend.swift`

Add convenience methods:

```swift
extension Friend {
    /// Returns addresses that need geocoding
    func addressesNeedingGeocoding() -> [(index: Int, address: LabeledPostalAddress)] {
        postalAddresses.enumerated().filter { $0.element.needsGeocoding }
    }

    /// Updates coordinates for an address and marks as geocoded
    func updateCoordinates(at index: Int, latitude: Double, longitude: Double) {
        postalAddresses[index].latitude = latitude
        postalAddresses[index].longitude = longitude
        postalAddresses[index].needsGeocoding = false
    }

    /// Marks an address as needing geocoding (e.g., after modification or failure)
    func markNeedsGeocoding(at index: Int) {
        postalAddresses[index].needsGeocoding = true
    }
}
```

### Phase 5: App Integration

**File**: `FriendzApp.swift`

1. Create and inject `GeocodingManager` as environment object
2. Initialize on app startup
3. Scan existing friends for addresses needing geocoding

**New File**: `Views/GeocodingStatusView.swift` (optional)

Create a debug/status view showing:
- Geocoding queue status
- Success/failure counts
- Manual retry button

### Phase 6: Contact Sync Integration

**File**: Contact sync service (when implemented)

When contacts are loaded/updated:
1. New addresses automatically have `needsGeocoding = true` (default)
2. If an existing address's fields changed, set `needsGeocoding = true`
3. Enqueue friends with addresses needing geocoding to `GeocodingManager`

Simple logic: "Address changed? Set the flag. The manager will handle the rest."

---

## Technical Considerations

### Rate Limiting Strategy

Apple's CLGeocoder has built-in rate limiting. Our strategy:
- Process one address per second maximum
- Use Task.sleep() for spacing requests
- Catch and handle rate limit errors
- Implement exponential backoff for retries

### Memory Management

- Limit concurrent geocoding operations to 1-3
- Clear completed items from queue
- Use weak references where appropriate

### Testing Strategy

1. **Unit Tests**: Test geocoding service with mock addresses
2. **Integration Tests**: Test queue manager with sample friends
3. **Manual Testing**: Use sample addresses in different formats
4. **Edge Cases**:
   - Invalid addresses
   - Network failures
   - Rate limiting scenarios
   - Multiple addresses per friend

---

## Dependencies

- **CoreLocation framework**: Already available in iOS SDK
- **SwiftData**: Already integrated in the project
- **Swift Concurrency**: Use async/await for clean asynchronous code

---

## Rollout Strategy

1. **Phase 1-2**: Implement core data model and service (non-UI visible)
2. **Phase 3-4**: Add queue manager and test with sample data
3. **Phase 5**: Integrate with app startup and existing friends
4. **Phase 6**: Integrate with contact sync when that feature is ready

Can be developed and tested independently before map display feature is implemented.