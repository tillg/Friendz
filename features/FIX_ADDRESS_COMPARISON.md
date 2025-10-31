# FIX: Smart Address Updates

## Problem

When updating a Friend's addresses (during contact sync or any other operation), we're creating new `LabeledPostalAddress` instances even when the address hasn't changed. This causes the geocoding metadata to be lost.

**Current behavior:**
- Address "123 Main St" with coordinates (40.0, -70.0) and `needsGeocoding = false`
- Contact sync runs, creates NEW address "123 Main St" with `needsGeocoding = true` (default)
- Coordinates are lost, address gets re-geocoded unnecessarily

## Root Cause

The `LabeledPostalAddress` struct has `needsGeocoding = true` as a default value. Every time we create a new instance (even with the same address values), we lose the geocoding state.

## Simple Solution

Make `LabeledPostalAddress` smarter by providing a factory method that:
1. Takes the new address data
2. Takes an optional existing address for comparison
3. If address is unchanged, preserves geocoding metadata
4. If address changed, returns new address with `needsGeocoding = true`

## Implementation

### Option 1: Factory Method (Recommended)

Add a static factory method to `LabeledPostalAddress`:

```swift
struct LabeledPostalAddress: Codable, Hashable {
    let label: String
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String

    var latitude: Double?
    var longitude: Double?
    var needsGeocoding: Bool = true

    var hasValidCoordinates: Bool {
        latitude != nil && longitude != nil
    }

    /// Creates a new address, optionally preserving geocoding data from an existing address
    static func create(
        label: String,
        street: String,
        city: String,
        state: String,
        postalCode: String,
        country: String,
        preservingGeocodingFrom existing: LabeledPostalAddress? = nil
    ) -> LabeledPostalAddress {
        // Create new address with provided values
        var newAddress = LabeledPostalAddress(
            label: label,
            street: street,
            city: city,
            state: state,
            postalCode: postalCode,
            country: country
        )

        // Check if we should preserve geocoding data
        if let existing = existing,
           existing.street == street,
           existing.city == city,
           existing.state == state,
           existing.postalCode == postalCode,
           existing.country == country {
            // Address unchanged - preserve geocoding metadata
            newAddress.latitude = existing.latitude
            newAddress.longitude = existing.longitude
            newAddress.needsGeocoding = existing.needsGeocoding
        }
        // Otherwise, needsGeocoding stays true (default)

        return newAddress
    }
}
```

### Option 2: Custom Setter on Friend (Alternative)

Add a smart setter method on the `Friend` model:

```swift
extension Friend {
    /// Updates postal addresses while preserving geocoding data for unchanged addresses
    func updatePostalAddresses(_ newAddresses: [LabeledPostalAddress]) {
        let existingAddresses = self.postalAddresses

        self.postalAddresses = newAddresses.map { newAddress in
            // Try to find matching existing address
            if let existingMatch = existingAddresses.first(where: { existing in
                existing.street == newAddress.street &&
                existing.city == newAddress.city &&
                existing.state == newAddress.state &&
                existing.postalCode == newAddress.postalCode &&
                existing.country == newAddress.country
            }) {
                // Address unchanged - preserve geocoding data
                var preserved = newAddress
                preserved.latitude = existingMatch.latitude
                preserved.longitude = existingMatch.longitude
                preserved.needsGeocoding = existingMatch.needsGeocoding
                return preserved
            }
            // New or changed address - keep defaults
            return newAddress
        }
    }
}
```

## Recommendation

**Use Option 1 (Factory Method)** because:
- ✅ Encapsulates logic in the struct itself
- ✅ Can be used anywhere addresses are created
- ✅ Clear and explicit intent: `preservingGeocodingFrom:`
- ✅ No need to modify Friend model
- ✅ Works for both contact sync and any future address updates

## Usage in ContactsManager

**Before (current code at line 256-285):**
```swift
friend.postalAddresses = contact.postalAddresses.map { address in
    let postalAddress = address.value
    let newAddress = LabeledPostalAddress(
        label: CNLabeledValue<CNPostalAddress>.localizedString(forLabel: address.label ?? ""),
        street: postalAddress.street,
        city: postalAddress.city,
        state: postalAddress.state,
        postalCode: postalAddress.postalCode,
        country: postalAddress.country
    )

    // Manual comparison and preservation logic...
    if let existingMatch = existingAddresses.first(where: { ... }) {
        var preserved = newAddress
        preserved.latitude = existingMatch.latitude
        preserved.longitude = existingMatch.longitude
        preserved.needsGeocoding = existingMatch.needsGeocoding
        return preserved
    }
    return newAddress
}
```

**After (using factory method):**
```swift
let existingAddresses = friend.postalAddresses

friend.postalAddresses = contact.postalAddresses.enumerated().map { index, address in
    let postalAddress = address.value

    // Find matching existing address (if any)
    let existingMatch = existingAddresses.first(where: { existing in
        existing.street == postalAddress.street &&
        existing.city == postalAddress.city &&
        existing.state == postalAddress.state &&
        existing.postalCode == postalAddress.postalCode &&
        existing.country == postalAddress.country
    })

    return LabeledPostalAddress.create(
        label: CNLabeledValue<CNPostalAddress>.localizedString(forLabel: address.label ?? ""),
        street: postalAddress.street,
        city: postalAddress.city,
        state: postalAddress.state,
        postalCode: postalAddress.postalCode,
        country: postalAddress.country,
        preservingGeocodingFrom: existingMatch  // Automatically preserves if unchanged
    )
}
```

Much cleaner and more explicit!

## Testing

### Test Cases

1. **Unchanged address preserves geocoding:**
   - Existing: "123 Main St" with coordinates and `needsGeocoding = false`
   - Update with same address
   - Result: Coordinates preserved, `needsGeocoding = false`

2. **Changed address resets geocoding:**
   - Existing: "123 Main St" with coordinates and `needsGeocoding = false`
   - Update to "456 Oak Ave"
   - Result: No coordinates, `needsGeocoding = true`

3. **New address needs geocoding:**
   - No existing address
   - Create new address "789 Pine Rd"
   - Result: No coordinates, `needsGeocoding = true`

4. **Case sensitivity:**
   - Existing: "Main St"
   - Update to "MAIN ST"
   - Should this be considered changed? (Yes, for safety - minor difference could be significant)

## Benefits

✅ **Simpler than hash-based approach** - no new fields needed
✅ **Preserves geocoding across syncs** - CloudKit and contact sync work correctly
✅ **Reusable** - can be used anywhere addresses are created/updated
✅ **Self-documenting** - `preservingGeocodingFrom:` makes intent clear
✅ **No migration needed** - works with existing data model
✅ **Fixes the immediate problem** - stops unnecessary re-geocoding

## Migration Path

This is a pure code refactor - no data model changes needed:

1. Add factory method to `LabeledPostalAddress`
2. Update `ContactsManager.updateFriend()` to use factory method
3. Test with existing data
4. Deploy

That's it!

## Future Enhancement

If we still want hash-based validation later (for detecting subtle changes or debugging), we can add it ON TOP of this fix. But this solves the immediate problem much more simply.
