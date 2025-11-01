# Address Geocoding Process Documentation

## Overview

This document describes the complete lifecycle of address geocoding in the Friendz app, with special emphasis on how and where geocoding data is persisted to SwiftData. The geocoding system converts postal addresses into GPS coordinates (latitude/longitude) for display on the map.

## Architecture Overview

The geocoding system consists of three main components:

```
┌─────────────────────────────────────────────────────────────────┐
│                         ContentView                              │
│  • Initializes GeocodingManager on app launch                   │
│  • Triggers scan after contact sync                              │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│                      GeocodingManager                            │
│  • Queue management with rate limiting (1 req/sec)              │
│  • Scans Friend models for addresses needing geocoding          │
│  • Orchestrates the geocoding workflow                          │
│  • SAVES to SwiftData after each successful geocode             │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│                      GeocodingService                            │
│  • Wraps Apple's MKGeocodingRequest                             │
│  • Returns GeocodingResult with coordinates + metadata          │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│                    Friend (SwiftData Model)                      │
│  • updateCoordinates() → MUTATES postalAddresses array          │
│  • SwiftData tracks changes automatically                        │
└─────────────────────────────────────────────────────────────────┘
```

## Data Model

### Friend Model (SwiftData)
**Location**: `Friend.swift:108-438`

```swift
@Model
class Friend {
    var postalAddresses: [LabeledPostalAddress]
    // ... other fields
}
```

### LabeledPostalAddress (Codable Struct)
**Location**: `Friend.swift:18-106`

```swift
struct LabeledPostalAddress: Codable, Hashable, Sendable {
    let label: String
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String

    // 🔑 Geocoding fields (mutable, optional)
    var latitude: Double?
    var longitude: Double?
    var geocodedAddressHash: String?  // Hash of geocoded address
    var geocodedDate: Date?           // When geocoding was performed
}
```

**Key Points**:
- `LabeledPostalAddress` is a **value type** (struct) embedded in Friend's array
- SwiftData stores the entire `postalAddresses` array as part of the Friend model
- Mutating the struct mutates the array, which SwiftData tracks automatically

## Complete Geocoding Workflow

### Phase 1: Initialization (App Launch)
**Location**: `ContentView.swift:31-44`

```swift
.task {
    // 1. Create GeocodingManager with modelContext
    if geocodingManager == nil {
        let manager = GeocodingManager(modelContext: modelContext)
        manager.activityStatusManager = activityStatusManager
        geocodingManager = manager
    }

    // 2. Sync contacts from iOS Contacts
    await contactsManager.syncContacts(modelContext: modelContext)

    // 3. Scan for addresses needing geocoding
    geocodingManager?.scanAndEnqueueFriends()
}
```

**What Happens**:
1. `GeocodingManager` is initialized with the app's `ModelContext`
2. Contacts are synced (may create/update Friend models with addresses)
3. All Friend models are scanned for addresses that `needsGeocoding`

### Phase 2: Scanning for Addresses
**Location**: `GeocodingManager.swift:72-87`

```swift
func scanAndEnqueueFriends() {
    let descriptor = FetchDescriptor<Friend>(
        predicate: #Predicate { !$0.isDeleted }
    )

    guard let allFriends = try? modelContext.fetch(descriptor) else {
        return
    }

    for friend in allFriends {
        let needsGeocoding = friend.addressesNeedingGeocoding()
        for (index, _) in needsGeocoding {
            enqueueAddress(friend: friend, addressIndex: index)
        }
    }
}
```

**What Happens**:
1. Fetches all non-deleted Friend models from SwiftData
2. For each friend, calls `friend.addressesNeedingGeocoding()`
3. Addresses with `needsGeocoding == true` are added to queue

**Determining if Address Needs Geocoding**:
**Location**: `Friend.swift:52-56, 204-207`

```swift
// In LabeledPostalAddress
var needsGeocoding: Bool {
    return !hasValidCoordinates
}

var hasValidCoordinates: Bool {
    guard latitude != nil,
          longitude != nil,
          let hash = geocodedAddressHash else {
        return false
    }
    // Coordinates valid only if hash matches current address
    return hash == addressHash
}

// In Friend
func addressesNeedingGeocoding() -> [(index: Int, address: LabeledPostalAddress)] {
    postalAddresses.enumerated().filter { $0.element.needsGeocoding }.map { ($0.offset, $0.element) }
}
```

**An address needs geocoding if**:
- No coordinates exist (`latitude` or `longitude` is nil), OR
- No hash exists (`geocodedAddressHash` is nil), OR
- Hash doesn't match current address (address changed since last geocoding)

See: [GEOCODING_HASH_VALIDATION.md](./GEOCODING_HASH_VALIDATION.md) for hash validation details.

### Phase 3: Queue Processing
**Location**: `GeocodingManager.swift:115-222`

```swift
private func processQueue() async {
    while !queue.isEmpty {
        let item = queue.removeFirst()

        // Verify still needs geocoding
        guard item.addressIndex < item.friend.postalAddresses.count,
              item.friend.postalAddresses[item.addressIndex].needsGeocoding else {
            continue
        }

        let address = item.friend.postalAddresses[item.addressIndex]

        do {
            // 1️⃣ Perform geocoding via service
            let result = try await service.geocode(address: address)

            // 2️⃣ Update Friend model (in-memory mutation)
            item.friend.updateCoordinates(
                at: item.addressIndex,
                latitude: result.latitude,
                longitude: result.longitude,
                addressHash: result.addressHash,
                geocodedDate: result.geocodedDate
            )

            // 3️⃣ 🔥 SAVE TO SWIFTDATA 🔥
            try modelContext.save()

            successCount += 1

            // 4️⃣ Rate limiting: wait 1 second
            try? await Task.sleep(for: requestDelay)

        } catch {
            failedCount += 1
            // Keep needsGeocoding = true for retry
        }
    }
}
```

**Processing Steps**:
1. **Dequeue**: Remove next item from queue
2. **Verify**: Check address still needs geocoding (might have been processed already)
3. **Geocode**: Call `GeocodingService.geocode()` to get coordinates
4. **Update Model**: Call `friend.updateCoordinates()` to mutate the address struct
5. **💾 SAVE**: Call `modelContext.save()` to persist to SwiftData
6. **Rate Limit**: Wait 1 second before next request

### Phase 4: Geocoding Service
**Location**: `GeocodingService.swift:27-64`

```swift
func geocode(address: LabeledPostalAddress) async throws -> GeocodingResult {
    // 1. Build address string
    let addressString = [
        address.street,
        address.city,
        address.state,
        address.postalCode,
        address.country
    ]
    .filter { !$0.isEmpty }
    .joined(separator: ", ")

    // 2. Create MKGeocodingRequest
    guard let request = MKGeocodingRequest(addressString: addressString) else {
        throw GeocodingError.invalidAddress
    }

    // 3. Perform geocoding (async)
    let mapItems = try await request.mapItems

    guard let mapItem = mapItems.first else {
        throw GeocodingError.noResults
    }

    // 4. Return result with metadata
    let location = mapItem.location
    return GeocodingResult(
        latitude: location.coordinate.latitude,
        longitude: location.coordinate.longitude,
        addressHash: address.addressHash,  // ← Computed from current address
        geocodedDate: Date()                // ← Timestamp of geocoding
    )
}
```

**What Happens**:
1. Constructs comma-separated address string
2. Creates Apple MapKit geocoding request
3. Awaits response from Apple's geocoding service
4. Returns `GeocodingResult` with:
   - `latitude` and `longitude` from MapKit
   - `addressHash` computed from the current address fields
   - `geocodedDate` timestamp (now)

**GeocodingResult Struct**:
**Location**: `GeocodingService.swift:12-17`

```swift
struct GeocodingResult {
    let latitude: Double
    let longitude: Double
    let addressHash: String      // Hash to validate coordinates later
    let geocodedDate: Date        // When geocoding occurred
}
```

## SwiftData Persistence: The Critical Moments

### Where Data is Saved to SwiftData

#### Moment 1: After Successful Geocoding
**Location**: `GeocodingManager.swift:169`

```swift
// Inside processQueue(), after geocoding succeeds:
try modelContext.save()  // 🔥 PERSISTENCE HAPPENS HERE
```

**What Gets Saved**:
- The entire `Friend` model (SwiftData tracks all changes)
- The modified `postalAddresses` array with updated geocoding fields:
  - `latitude` ← from GeocodingResult
  - `longitude` ← from GeocodingResult
  - `geocodedAddressHash` ← from GeocodingResult
  - `geocodedDate` ← from GeocodingResult

**Why This Works**:
1. `Friend.updateCoordinates()` mutates the struct in the array
2. SwiftData's change tracking detects the array mutation
3. `modelContext.save()` commits changes to the persistent store
4. Changes are immediately available to all queries

#### Moment 2: During Contact Sync (Preservation)
**Location**: `ContactsManager.swift:139`

```swift
// Inside syncContacts(), after processing all contacts:
try modelContext.save()  // 🔥 PERSISTENCE HAPPENS HERE
```

**What Gets Saved**:
- Updated Friend models with new contact data
- **Preserved** geocoding data for unchanged addresses (via `LabeledPostalAddress.create()`)

### How Friend.updateCoordinates() Works
**Location**: `Friend.swift:210-222`

```swift
func updateCoordinates(
    at index: Int,
    latitude: Double,
    longitude: Double,
    addressHash: String,
    geocodedDate: Date
) {
    guard index < postalAddresses.count else { return }

    // ⚠️ Direct mutation of struct in array
    postalAddresses[index].latitude = latitude
    postalAddresses[index].longitude = longitude
    postalAddresses[index].geocodedAddressHash = addressHash
    postalAddresses[index].geocodedDate = geocodedDate
}
```

**How SwiftData Tracks This**:
1. `Friend` is marked with `@Model` macro
2. SwiftData generates change tracking for all properties
3. Mutating `postalAddresses[index]` triggers change notification
4. SwiftData marks the Friend object as "dirty"
5. Next `modelContext.save()` commits the changes

**Important**: Even though `LabeledPostalAddress` is a value type (struct), SwiftData tracks changes to the array that contains it.

## Data Flow Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. User Opens App                                               │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│ 2. Contact Sync                                                 │
│    • Fetches from iOS Contacts                                  │
│    • Creates/updates Friend models                              │
│    • Preserves geocoding for unchanged addresses                │
│    • modelContext.save() → SwiftData 💾                         │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│ 3. Scan for Geocoding                                           │
│    • Fetch all Friends from SwiftData                           │
│    • Check each address: needsGeocoding?                        │
│    • Add to queue if needed                                     │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│ 4. Process Queue (Rate Limited)                                 │
│    ┌──────────────────────────────────────────┐                │
│    │ For each address in queue:               │                │
│    │                                           │                │
│    │  a) GeocodingService.geocode()           │                │
│    │     └→ MKGeocodingRequest                │                │
│    │        └→ Apple's Geocoding API          │                │
│    │           └→ Returns coordinates         │                │
│    │                                           │                │
│    │  b) friend.updateCoordinates()           │                │
│    │     └→ Mutates postalAddresses array     │                │
│    │        └→ Sets: lat, lon, hash, date     │                │
│    │                                           │                │
│    │  c) modelContext.save() → SwiftData 💾   │                │
│    │     └→ Persists geocoding data           │                │
│    │                                           │                │
│    │  d) Sleep 1 second (rate limiting)       │                │
│    └──────────────────────────────────────────┘                │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ↓
┌─────────────────────────────────────────────────────────────────┐
│ 5. Data Now Available                                           │
│    • MapView queries Friends from SwiftData                     │
│    • Filters addresses with hasValidCoordinates                 │
│    • Displays annotations on map                                │
└─────────────────────────────────────────────────────────────────┘
```

## Key SwiftData Concepts

### How SwiftData Stores LabeledPostalAddress

Even though `LabeledPostalAddress` is a struct (value type), SwiftData can store it because:

1. **Codable Conformance**: The struct conforms to `Codable`
2. **Array Storage**: SwiftData stores arrays of Codable types as binary data
3. **Change Tracking**: SwiftData tracks mutations to the array
4. **Automatic Encoding**: SwiftData encodes/decodes the structs automatically

### Persistence Timing

**Eager Saving**: The app saves after each geocoding success rather than batching:
- ✅ **Pros**: Data survives app crashes, users see progress
- ❌ **Cons**: More write operations (acceptable for rate-limited geocoding)

### Query Integration

After saving, the data is immediately queryable:

```swift
// In MapView or other views
@Query(filter: #Predicate<Friend> { !$0.isDeleted })
var friends: [Friend]

// Access geocoded addresses
let geocodedAddresses = friends.flatMap { friend in
    friend.postalAddresses.filter { $0.hasValidCoordinates }
}
```

## Error Handling

### Geocoding Failures
**Location**: `GeocodingManager.swift:184-203`

When geocoding fails:
1. **No Save**: `modelContext.save()` is NOT called
2. **Retry Later**: Address remains in `needsGeocoding` state
3. **Error Logged**: Detailed error information printed to console
4. **User Notification**: Activity status updated with error count

### Common Errors

| Error | Meaning | Action |
|-------|---------|--------|
| CLError.geocodeFoundNoResult | Address not recognized by Apple | Keeps needsGeocoding=true for manual retry |
| CLError.network | No internet connection | Keeps needsGeocoding=true, auto-retries on next app launch |
| CLError.denied | Location permission denied | Keeps needsGeocoding=true, prompts user for permission |

## Performance Considerations

### Rate Limiting
**Location**: `GeocodingManager.swift:46, 182`

```swift
private let requestDelay: Duration = .seconds(1)
// ...
try? await Task.sleep(for: requestDelay)
```

- 1 request per second to avoid hitting Apple's rate limits
- Longer delay (2 seconds) after failures

### Batch Processing

The system processes addresses sequentially, not in parallel:
- **Why**: Respects rate limits
- **Impact**: Large queues take time (3000 addresses = ~50 minutes)
- **Mitigation**: Only geocodes addresses that need it (hash validation)

### Memory Efficiency

- Queue stores references to Friend objects, not copies
- Only one address processed at a time
- Cleared queue on cancellation

## UI Integration

### Activity Status Updates
**Location**: `GeocodingManager.swift:119-122, 177-180, 213-221`

The geocoding manager updates the activity status bar throughout the process:

```swift
// Starting
activityStatusManager?.updateGeocoding(.locating(current: 0, total: totalAddresses))

// Progress
activityStatusManager?.updateGeocoding(.locating(current: processed, total: totalAddresses))

// Completion
activityStatusManager?.updateGeocoding(.success(found: successCount, failed: failedCount))
```

### Status Icons
**Location**: `Views/GeocodingStatusIcon.swift`

The status bar shows real-time geocoding progress using the activity manager state.

## Testing & Debugging

### Debug Logging

The geocoding system includes extensive logging:

```swift
print("📍 Starting geocoding queue: \(totalAddresses) address(es)")
print("🗺️ Geocoding: \(friend.firstName) \(friend.lastName)")
print("   Address: \(addressString)")
print("✅ SUCCESS: Coordinates: \(result.latitude), \(result.longitude)")
print("❌ FAILED: \(errorDetails)")
print("🏁 Geocoding queue completed")
```

### Manual Testing Checklist

- [x] Addresses geocode correctly after contact sync
- [x] Coordinates persist across app restarts
- [x] Failed addresses can be retried
- [x] Hash validation prevents redundant geocoding
- [x] Rate limiting respected (1 req/sec)
- [x] Activity status updates correctly
- [x] App doesn't crash with 3000+ contacts

### Verification Queries

Check geocoding status in SwiftData:

```swift
// Count addresses needing geocoding
let allFriends = try modelContext.fetch(FetchDescriptor<Friend>())
let needingGeocode = allFriends.flatMap { $0.addressesNeedingGeocoding() }
print("Addresses needing geocoding: \(needingGeocode.count)")

// Count successfully geocoded
let geocoded = allFriends.flatMap { $0.postalAddresses.filter { $0.hasValidCoordinates } }
print("Geocoded addresses: \(geocoded.count)")
```

## Related Documentation

- [GEOCODING_HASH_VALIDATION.md](./GEOCODING_HASH_VALIDATION.md) - Hash-based validation system
- [CONTACTSMANAGER_UPDATEFRIEND.md](./CONTACTSMANAGER_UPDATEFRIEND.md) - How geocoding is preserved during contact sync
- [MAP.md](./MAP.md) - How geocoded addresses are displayed on the map

## Future Improvements

Potential enhancements:
- [ ] Parallel geocoding with rate limiter (process multiple at once)
- [ ] Persistent queue across app restarts
- [ ] Background geocoding (when app is in background)
- [ ] User-triggered geocoding for specific contacts
- [ ] Cache negative results (permanently failed addresses)
- [ ] Fallback geocoding providers (if Apple fails)
- [ ] Geocoding accuracy scores/confidence levels

## Summary

The geocoding process in Friendz:
1. **Scans** Friend models after contact sync
2. **Enqueues** addresses that need geocoding (based on hash validation)
3. **Geocodes** using Apple's MapKit (rate limited to 1/sec)
4. **Updates** Friend model's postalAddresses array
5. **💾 Saves to SwiftData** immediately after each success
6. **Preserves** geocoding during contact sync (unless address changed)

The key insight: **Geocoding data is saved to SwiftData immediately after each successful geocoding operation** by calling `modelContext.save()` in `GeocodingManager.processQueue()` (line 169). This ensures data persists even if the app crashes mid-process.
