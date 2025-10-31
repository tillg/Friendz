# FEATURE: Geocoding Hash Validation

## Overview

Currently, the geocoding system uses a simple `needsGeocoding: Bool` flag to track whether an address needs geocoding. This approach has a critical flaw: when addresses are synced across devices via CloudKit, or when contacts are re-synced from iOS Contacts, we lose the ability to reliably determine if the stored coordinates actually match the current address.

**The Solution**: Store a hash of the address along with the geocoded coordinates and timestamp. This allows us to definitively determine if coordinates are valid for the current address, making `needsGeocoding` a computed property rather than a stored flag.

## The Problem

### Current Architecture Issues

1. **CloudKit Sync Ambiguity**: When Friend data syncs across devices, we can't tell if coordinates belong to the current address or an old version
2. **Contact Sync Overwrites**: When iOS Contacts sync runs, it recreates address objects, potentially losing geocoding metadata
3. **Unreliable Flag**: The `needsGeocoding` flag can get out of sync with reality
4. **No Validation**: We have no way to verify if coordinates are still valid after an address change

### Example Scenario

**Device A:**
- Friend has address: "123 Main St, Springfield, IL"
- Geocoded to: (39.7817, -89.6501)
- `needsGeocoding = false`

**Device B (after CloudKit sync):**
- Receives same friend with coordinates
- Contact sync runs and updates address to: "456 Oak Ave, Springfield, IL"
- Coordinates are now WRONG but we don't know it
- `needsGeocoding` might still be `false`

## Proposed Solution

### Core Concept

Store three pieces of metadata with each geocoded address:

1. **`geocodedAddressHash: String?`** - Hash of the address that was geocoded
2. **`geocodedDate: Date?`** - When the geocoding was performed
3. **`latitude/longitude: Double?`** - The coordinates (already exists)

The `needsGeocoding` flag becomes a **computed property** that checks if:
- Coordinates exist AND
- Hash of current address matches `geocodedAddressHash`

If the hash doesn't match, coordinates are considered invalid and geocoding is needed.

### Benefits

✅ **Deterministic**: We can always tell if coordinates are valid for the current address
✅ **Self-Healing**: Address changes automatically trigger re-geocoding
✅ **Sync-Safe**: CloudKit sync preserves all metadata, validation happens locally
✅ **Debuggable**: Can see when geocoding was done and what address was geocoded
✅ **No Manual Flags**: No need to manually set/unset `needsGeocoding`

## Technical Design

### Data Model Changes

**File**: `Friend.swift` → `LabeledPostalAddress` struct

```swift
struct LabeledPostalAddress: Codable, Hashable {
    let label: String  // e.g., "Work", "Home"
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String

    // Geocoding metadata
    var latitude: Double?
    var longitude: Double?
    var geocodedAddressHash: String?  // NEW: Hash of the address that was geocoded
    var geocodedDate: Date?            // NEW: When geocoding was performed

    /// Hash of the current address (for validation)
    var addressHash: String {
        // Create a canonical string representation of the address
        let components = [street, city, state, postalCode, country]
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
            .joined(separator: "|")

        // Return SHA256 hash (or simple hash for performance)
        return components.sha256Hash  // Or use .hashValue.description for simplicity
    }

    /// Computed property: Does this address have valid coordinates?
    var hasValidCoordinates: Bool {
        guard let lat = latitude,
              let lon = longitude,
              let hash = geocodedAddressHash else {
            return false
        }

        // Coordinates are valid if the hash matches
        return hash == addressHash
    }

    /// Computed property: Does this address need geocoding?
    var needsGeocoding: Bool {
        // Needs geocoding if we don't have valid coordinates
        return !hasValidCoordinates
    }
}
```

### Hashing Strategy

**Option A: Simple String Hash (Recommended for MVP)**
```swift
var addressHash: String {
    let components = [street, city, state, postalCode, country]
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
        .joined(separator: "|")
    return String(components.hashValue)
}
```

**Pros**: Fast, simple, no external dependencies
**Cons**: Hash collisions possible (but extremely rare for this use case)

**Option B: SHA256 (More Robust)**
```swift
import CryptoKit

var addressHash: String {
    let components = [street, city, state, postalCode, country]
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
        .joined(separator: "|")

    let data = Data(components.utf8)
    let hash = SHA256.hash(data: data)
    return hash.compactMap { String(format: "%02x", $0) }.joined()
}
```

**Pros**: Cryptographically secure, no collisions
**Cons**: Slightly slower, longer hash strings (64 chars)

**Recommendation**: Start with **Option A** (simple hash) for performance. Upgrade to SHA256 only if hash collisions become an issue (they won't).

### Geocoding Service Changes

**File**: `Services/GeocodingService.swift`

Update the return type to include the address hash:

```swift
struct GeocodingResult {
    let latitude: Double
    let longitude: Double
    let addressHash: String
    let geocodedDate: Date
}

func geocode(address: LabeledPostalAddress) async throws -> GeocodingResult {
    // ... existing geocoding logic ...

    return GeocodingResult(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude,
        addressHash: address.addressHash,
        geocodedDate: Date()
    )
}
```

### GeocodingManager Changes

**File**: `Services/GeocodingManager.swift`

Update the coordinate storage to include metadata:

```swift
// In processQueue() method, after successful geocoding:

let result = try await service.geocode(address: address)

// Update the friend's address with coordinates AND metadata
item.friend.updateCoordinates(
    at: item.addressIndex,
    latitude: result.latitude,
    longitude: result.longitude,
    addressHash: result.addressHash,
    geocodedDate: result.geocodedDate
)

try modelContext.save()
```

### Friend Model Helper Methods

**File**: `Friend.swift`

Update the helper methods:

```swift
extension Friend {
    /// Returns addresses that need geocoding (computed based on hash validation)
    func addressesNeedingGeocoding() -> [(index: Int, address: LabeledPostalAddress)] {
        postalAddresses.enumerated()
            .filter { $0.element.needsGeocoding }  // Uses computed property now!
            .map { ($0.offset, $0.element) }
    }

    /// Updates coordinates for an address with hash validation metadata
    func updateCoordinates(
        at index: Int,
        latitude: Double,
        longitude: Double,
        addressHash: String,
        geocodedDate: Date
    ) {
        guard index < postalAddresses.count else { return }
        postalAddresses[index].latitude = latitude
        postalAddresses[index].longitude = longitude
        postalAddresses[index].geocodedAddressHash = addressHash
        postalAddresses[index].geocodedDate = geocodedDate
    }

    /// Optional: Manually invalidate geocoding (marks coordinates as stale)
    func invalidateGeocoding(at index: Int) {
        guard index < postalAddresses.count else { return }
        // Simply clear the hash - coordinates remain but will be considered invalid
        postalAddresses[index].geocodedAddressHash = nil
    }
}
```

### Contact Sync Changes

**File**: `Services/ContactsManager.swift`

The address preservation logic (lines 268-280) needs to be updated to preserve ALL geocoding metadata:

```swift
// In updateFriend() method, when mapping postal addresses:

if let existingMatch = existingAddresses.first(where: { existing in
    existing.street == newAddress.street &&
    existing.city == newAddress.city &&
    existing.state == newAddress.state &&
    existing.postalCode == newAddress.postalCode &&
    existing.country == newAddress.country
}) {
    // Address unchanged - preserve ALL geocoding metadata
    var preserved = newAddress
    preserved.latitude = existingMatch.latitude
    preserved.longitude = existingMatch.longitude
    preserved.geocodedAddressHash = existingMatch.geocodedAddressHash  // NEW
    preserved.geocodedDate = existingMatch.geocodedDate                // NEW
    return preserved
}

// New or changed address - return with no geocoding metadata
// (needsGeocoding will compute to true automatically)
return newAddress
```

## Migration Strategy

### Handling Existing Data

Existing addresses in SwiftData have:
- `latitude: Double?`
- `longitude: Double?`
- `needsGeocoding: Bool` (stored value)

After migration to new model:
- `latitude: Double?` ✓ (unchanged)
- `longitude: Double?` ✓ (unchanged)
- `geocodedAddressHash: String?` = `nil` (new field, defaults to nil)
- `geocodedDate: Date?` = `nil` (new field, defaults to nil)
- `needsGeocoding: Bool` (now computed, will return `true` because hash is nil)

**Result**: All existing addresses will automatically need re-geocoding on first launch. This is actually CORRECT behavior because we don't know if the stored coordinates match the current addresses.

### Migration Steps

1. **Update Data Model**: Add new fields to `LabeledPostalAddress`
2. **Update Helper Methods**: Change signatures to include hash and date
3. **Update GeocodingService**: Return metadata with results
4. **Update GeocodingManager**: Store metadata when geocoding
5. **Update ContactsManager**: Preserve metadata during sync
6. **Test Migration**: Verify existing data triggers re-geocoding
7. **Deploy**: All devices will re-geocode on next launch (one-time cost)

### Performance Considerations

**One-Time Re-Geocoding Cost:**
- After deployment, all addresses will need re-geocoding (because hash is nil)
- For a user with 100 contacts × 1 address each = 100 geocoding requests
- At 1 request/second = ~2 minutes to complete
- This happens in background, doesn't block UI

**Ongoing Performance:**
- Hash computation is O(1) and extremely fast
- No additional network requests
- Minimal storage overhead (~50 bytes per address)

## Testing Strategy

### Unit Tests

1. **Hash Consistency**: Same address always produces same hash
2. **Hash Sensitivity**: Different addresses produce different hashes
3. **Computed Property Logic**: `needsGeocoding` returns correct values
4. **Validation Logic**: `hasValidCoordinates` works correctly

### Integration Tests

1. **Geocoding Flow**: Verify metadata is stored correctly
2. **Contact Sync**: Verify metadata is preserved
3. **Address Change**: Verify coordinates invalidated when address changes
4. **CloudKit Sync**: Verify metadata syncs across devices

### Manual Testing Scenarios

1. **Fresh Install**: New device geocodes addresses correctly
2. **Address Change**: Changing an address triggers re-geocoding
3. **Cross-Device Sync**: Geocoding on Device A prevents re-geocoding on Device B
4. **Contact Re-Sync**: Re-syncing contacts doesn't trigger unnecessary geocoding

## Edge Cases

### 1. Address Formatting Changes
**Problem**: "123 Main St" vs "123 Main Street"
**Solution**: Normalize address components (trim, lowercase) before hashing

### 2. Label Changes
**Problem**: Changing label from "Home" to "Work" shouldn't invalidate coordinates
**Solution**: Hash only includes address fields, not label (already in design)

### 3. Failed Geocoding
**Problem**: What if geocoding fails?
**Solution**: Don't store hash or date. `needsGeocoding` stays true. Retry later.

### 4. Manual Coordinate Entry
**Problem**: What if user manually enters coordinates?
**Solution**: Store hash and date when coordinates are set manually

### 5. Partially Complete Addresses
**Problem**: Address with missing fields (e.g., no postal code)
**Solution**: Hash whatever fields exist. Works fine.

## Implementation Plan

### Phase 1: Data Model Updates (30 min)
- [ ] Add `geocodedAddressHash` field to `LabeledPostalAddress`
- [ ] Add `geocodedDate` field to `LabeledPostalAddress`
- [ ] Add `addressHash` computed property
- [ ] Convert `needsGeocoding` to computed property
- [ ] Update `hasValidCoordinates` to use hash validation

### Phase 2: Helper Method Updates (15 min)
- [ ] Update `Friend.updateCoordinates()` signature
- [ ] Update `Friend.addressesNeedingGeocoding()` (no changes needed, uses computed property)
- [ ] Add `Friend.invalidateGeocoding()` method (optional)

### Phase 3: Service Layer Updates (30 min)
- [ ] Create `GeocodingResult` struct
- [ ] Update `GeocodingService.geocode()` to return result with metadata
- [ ] Update `GeocodingManager.processQueue()` to store metadata

### Phase 4: Contact Sync Updates (15 min)
- [ ] Update `ContactsManager.updateFriend()` to preserve new metadata fields
- [ ] Verify `mapContactToFriend()` creates addresses with nil metadata (default behavior)

### Phase 5: Testing (45 min)
- [ ] Unit tests for hash computation
- [ ] Unit tests for computed properties
- [ ] Integration test for geocoding flow
- [ ] Manual testing: fresh install
- [ ] Manual testing: address change
- [ ] Manual testing: CloudKit sync

### Phase 6: Migration Testing (30 min)
- [ ] Test with existing SwiftData database
- [ ] Verify re-geocoding triggers correctly
- [ ] Verify no data loss

**Total Estimated Time**: ~2.5 hours

## Benefits Summary

### Before (Current System)
❌ CloudKit sync causes unnecessary re-geocoding
❌ Contact sync can overwrite valid coordinates
❌ No way to validate if coordinates match address
❌ Manual flag management prone to errors
❌ No debugging information

### After (Hash Validation System)
✅ CloudKit sync works perfectly - coordinates validated locally
✅ Contact sync preserves valid geocoding data
✅ Automatic validation - coordinates always match address
✅ Computed property - no manual flag management
✅ Timestamp for debugging and cache invalidation
✅ Self-healing - address changes auto-trigger re-geocoding

## Future Enhancements

### Optional: Geocoding Cache Expiration
Could add logic to re-geocode addresses after a certain time period (e.g., 1 year) in case address data improves:

```swift
var needsGeocoding: Bool {
    guard hasValidCoordinates,
          let geocodedDate = geocodedDate else {
        return true
    }

    // Optional: Re-geocode after 1 year
    let oneYearAgo = Date().addingTimeInterval(-365 * 24 * 60 * 60)
    if geocodedDate < oneYearAgo {
        return true
    }

    return false
}
```

### Optional: User-Facing Geocoding Status
Could expose geocoding metadata in UI:
- "Located on Dec 15, 2024"
- "Address changed, location pending"
- Manual "Refresh Location" button

---

## Questions & Decisions

### Q: What hash algorithm should we use?
**A**: Start with Swift's built-in `hashValue` (simple, fast). Upgrade to SHA256 only if collisions occur (they won't).

### Q: Should we re-geocode old data on migration?
**A**: Yes - this is the safest approach and ensures all coordinates are validated. One-time cost.

### Q: What if two addresses hash to the same value?
**A**: With proper hashing (even simple hash), probability is essentially zero. If it happens, worst case: unnecessary re-geocoding.

### Q: Should we normalize addresses before hashing?
**A**: Yes - trim whitespace and lowercase to handle minor formatting differences.

### Q: Should geocodedDate be used for anything?
**A**: Initially just for debugging. Could add cache expiration later (see Future Enhancements).

---

## Success Criteria

1. ✅ No unnecessary re-geocoding across CloudKit syncs
2. ✅ Address changes automatically trigger re-geocoding
3. ✅ Contact sync preserves valid geocoding data
4. ✅ All coordinates can be validated as matching their address
5. ✅ No manual flag management needed
6. ✅ Existing data migrates cleanly

---

## References

- Original geocoding feature spec: `/features/GET_COORDINATES.md`
- Friend model: `Friendz/Friendz/Friend.swift`
- GeocodingManager: `Friendz/Friendz/Services/GeocodingManager.swift`
- ContactsManager: `Friendz/Friendz/Services/ContactsManager.swift`
