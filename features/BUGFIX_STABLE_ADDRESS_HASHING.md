# Bug Fix: Stable Address Hashing

## Problem

The app was re-geocoding all 2630+ addresses on every app launch, even though ~100 had already been successfully geocoded in previous sessions.

## Root Cause

**Location**: `Friend.swift:37` (before fix)

The `addressHash` computed property was using Swift's built-in `hashValue`:

```swift
var addressHash: String {
    let components = [street, city, state, postalCode, country]
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
        .joined(separator: "|")
    return String(components.hashValue)  // ❌ UNSTABLE
}
```

### Why This Failed

Swift's `hashValue` is **intentionally non-deterministic**:
- It's randomized on each app launch for security and performance reasons
- Same input produces different outputs across app restarts
- This is documented Swift behavior (not a bug in Swift)

### The Impact

1. **App Launch 1**:
   - Address: "123 Main St, New York, NY, 10001, USA"
   - Computed hash: `"-8234567890123456789"`
   - Geocode succeeds → Save coordinates with `geocodedAddressHash = "-8234567890123456789"`

2. **App Restarts**:
   - Same address: "123 Main St, New York, NY, 10001, USA"
   - Computed hash: `"7891234567890123456"` ← **Different!**
   - Validation check: `geocodedAddressHash ("-8234567890123456789") != addressHash ("7891234567890123456")`
   - Result: `needsGeocoding = true` ← **Incorrectly thinks address changed**

3. **Outcome**:
   - All 2630 addresses flagged as needing geocoding
   - Queue starts from scratch every app launch
   - Previously geocoded addresses re-geocoded unnecessarily

## Solution

**Location**: `Friend.swift:35-47` (after fix)

Replace `hashValue` with **SHA256** for stable, deterministic hashing:

```swift
import CryptoKit  // Added to imports

var addressHash: String {
    let components = [street, city, state, postalCode, country]
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
        .joined(separator: "|")

    // Use SHA256 for stable hashing (same input always produces same output)
    guard let data = components.data(using: .utf8) else {
        return components // Fallback to raw string if encoding fails
    }

    let hash = SHA256.hash(data: data)
    return hash.compactMap { String(format: "%02x", $0) }.joined()
}
```

### Why SHA256?

1. **Deterministic**: Same input always produces same output
2. **Stable**: Output doesn't change across app launches or OS updates
3. **Platform-independent**: Same hash on iPhone, iPad, Mac
4. **Collision-resistant**: Virtually impossible for two different addresses to have same hash
5. **Native**: CryptoKit is built into iOS/macOS (no external dependencies)

### Example Output

```swift
// Address: "123 main st, new york, ny, 10001, usa"
// SHA256 hash: "a3f5e8d9c2b1a4f6e7d8c9b0a1f2e3d4c5b6a7f8e9d0c1b2a3f4e5d6c7b8a9f0"
// This hash will be EXACTLY THE SAME every time, forever
```

## Migration Strategy

### What Happens to Existing Data?

After deploying this fix:

1. **First App Launch Post-Fix**:
   - All existing `geocodedAddressHash` values use old unstable hashes
   - All `addressHash` computations now use new stable SHA256
   - Comparison will fail for ALL addresses (mismatch between old and new hash format)
   - **Result**: All addresses will be queued for re-geocoding ONE MORE TIME

2. **Subsequent App Launches**:
   - Addresses geocoded after fix have stable SHA256 hashes
   - `geocodedAddressHash` (stored) matches `addressHash` (computed)
   - **Result**: Only NEW or CHANGED addresses need geocoding ✅

### One-Time Re-Geocoding

Users will experience:
- **After update**: Queue shows ~2630 addresses (one-time migration)
- **After completion**: Future launches only geocode new/changed addresses
- **Performance impact**: One geocoding session (~45-50 minutes at 1 req/sec)

### No Data Loss

- Existing coordinates remain in the database
- They're just invalidated because hash format changed
- Re-geocoding will produce (nearly) identical coordinates
- No user-visible data loss, just a one-time processing delay

## Testing

### Verify the Fix

1. **Before Fix** (to reproduce the bug):
   ```swift
   let address = LabeledPostalAddress(...)
   let hash1 = address.addressHash
   // Restart app
   let hash2 = address.addressHash
   print(hash1 == hash2)  // false ❌
   ```

2. **After Fix**:
   ```swift
   let address = LabeledPostalAddress(...)
   let hash1 = address.addressHash
   // Restart app
   let hash2 = address.addressHash
   print(hash1 == hash2)  // true ✅
   ```

### Manual Test

1. Launch app, let it geocode 10-20 addresses
2. Force quit app
3. Relaunch app
4. Check geocoding queue count
5. **Expected**: Only new/changed addresses in queue (not the 10-20 already geocoded)

## Related Code

- **Hash Computation**: `Friend.swift:35-47`
- **Hash Storage**: `GeocodingManager.swift:160-166`
- **Hash Validation**: `Friend.swift:41-56`

## Performance Impact

### CPU Impact
- SHA256 is more computationally expensive than `hashValue`
- However, it's only computed:
  - During address validation (checking if geocoding needed)
  - During geocoding (storing the hash)
- Impact: Negligible (< 1ms per address, only on-demand)

### Memory Impact
- SHA256 produces 64-character hex string (vs ~20 chars for hashValue string)
- Storage: ~44 extra bytes per address
- For 3000 addresses: ~132 KB additional storage
- Impact: Negligible

### Network Impact
- **Massive improvement**: Prevents redundant geocoding API calls
- Before fix: 2630 calls per app launch
- After fix: Only new/changed addresses (typically 0-10 per launch)
- Savings: ~2630 API calls per day (if user opens app daily)

## Alternative Solutions Considered

### 1. Store Address String Directly
```swift
var geocodedAddressString: String?  // "123 main st|new york|ny|10001|usa"
```
**Rejected**: More storage, harder to compare (case sensitivity, whitespace)

### 2. Use MD5 Hash
```swift
import CryptoKit
let hash = Insecure.MD5.hash(data: data)
```
**Rejected**: MD5 is deprecated for security reasons (though fine for this use case)

### 3. Custom Stable Hash Function
```swift
// Simple sum of character codes
let hash = components.unicodeScalars.reduce(0) { $0 + Int($1.value) }
```
**Rejected**: High collision probability, not cryptographically sound

### 4. Persist Sequential Version Number
```swift
var addressVersion: Int  // Increment on every change
```
**Rejected**: Requires migrating existing data, doesn't detect changes made in Contacts app

## Conclusion

The fix ensures geocoded addresses are properly recognized across app launches, dramatically reducing unnecessary geocoding operations from 2630+ per launch to only new/changed addresses.

**Key Takeaway**: When storing validation hashes, always use **cryptographic hash functions** (SHA256, SHA512) instead of `hashValue` for stability across app launches.

## Commit Message

```
Fix: Use stable SHA256 hashing for address validation

Problem: App was re-geocoding all 2630+ addresses on every launch
because Swift's hashValue is non-deterministic across app restarts.

Solution: Replace hashValue with SHA256 from CryptoKit for stable,
deterministic address hashing. Same address now produces same hash
every time.

Impact: After one-time re-geocode post-update, subsequent launches
only process new/changed addresses (typically 0-10 vs 2630).

Technical: Import CryptoKit, compute SHA256 hash of normalized
address components, return as hex string.

Files changed:
- Friend.swift: addressHash computed property now uses SHA256
```
