# ContactsManager.updateFriend() Method Documentation

## Overview

The `updateFriend(_:from:)` method in `ContactsManager.swift` is responsible for updating an existing `Friend` SwiftData model with fresh data from an iOS `CNContact`. This method is called during contact synchronization when a contact already exists in the app's database but has been modified in the user's iOS Contacts.

## Location

**File**: `Friendz/Friendz/Services/ContactsManager.swift:247-306`

## Method Signature

```swift
private func updateFriend(_ friend: Friend, from contact: CNContact)
```

## Purpose

This method serves as the core update logic during contact synchronization, ensuring that:
1. All contact fields are kept in sync with iOS Contacts
2. Geocoding data is intelligently preserved when addresses haven't changed
3. The friend is marked as not deleted if it reappears in Contacts
4. All contact metadata (phone numbers, emails, addresses, photos) is accurately reflected

## Key Responsibilities

### 1. Basic Field Updates
Updates all basic contact information:
- **Names**: `firstName`, `lastName`, `middleName` (nil if empty)
- **Organization**: `organizationName` (nil if empty)
- **Contact Type**: `isCompany` (based on CNContact.contactType)

### 2. Phone Numbers
Maps `CNContact.phoneNumbers` to `Friend.phoneNumbers`:
- Converts `CNPhoneNumber` objects to `LabeledValue` structs
- Localizes labels (e.g., "mobile", "work", "home")
- Replaces the entire array (no merging)

### 3. Email Addresses
Maps `CNContact.emailAddresses` to `Friend.emailAddresses`:
- Converts NSString email values to `LabeledValue` structs
- Localizes labels
- Replaces the entire array (no merging)

### 4. Postal Addresses (with Geocoding Preservation)
**This is the most complex and critical part of the method.**

Maps `CNContact.postalAddresses` to `Friend.postalAddresses` while intelligently preserving geocoding data:

```swift
// For each new address from CNContact
let existingMatch = existingAddresses.first(where: { existing in
    existing.street == postalAddress.street &&
    existing.city == postalAddress.city &&
    existing.state == postalAddress.state &&
    existing.postalCode == postalAddress.postalCode &&
    existing.country == postalAddress.country
})

return LabeledPostalAddress.create(
    label: ...,
    street: ...,
    city: ...,
    state: ...,
    postalCode: ...,
    country: ...,
    preservingGeocodingFrom: existingMatch  // ← Key: preserves geocoding if address unchanged
)
```

**Geocoding Preservation Logic**:
- If an address's fields are identical to an existing address, geocoding data is preserved
- Preserved data includes: `latitude`, `longitude`, `geocodedAddressHash`, `geocodedDate`
- If address fields change, geocoding data is cleared (address needs re-geocoding)
- This prevents unnecessary geocoding API calls for unchanged addresses

See: [GEOCODING_HASH_VALIDATION.md](./GEOCODING_HASH_VALIDATION.md) for details on the hash-based validation system.

### 5. Photo Data
Updates the contact's photo:
- Replaces `friend.photoData` with `contact.imageData`
- Can be nil if contact has no photo

### 6. Metadata Updates
- **Last Modified Date**: Updates from `contact.dates.first` (if available)
- **Deleted Flag**: Resets `isDeleted` to `false` (contact exists in Contacts again)

## Call Flow

```
syncContacts()
    ↓
detectChanges() → returns true if contact modified
    ↓
updateFriend() ← Called only if changes detected
    ↓
    ├─ Update basic fields
    ├─ Map phone numbers
    ├─ Map email addresses
    ├─ Map postal addresses (with geocoding preservation)
    ├─ Update photo data
    └─ Update metadata
```

## Design Decisions

### Why Private?
This method is an implementation detail of the sync process. The public API is `syncContacts(modelContext:)`.

### Why Not Merge Arrays?
Phone numbers, emails, and addresses are completely replaced rather than merged because:
- iOS Contacts is the source of truth
- Merging logic would be complex and error-prone
- Users manage contacts in iOS Contacts, not in this app

### Why Preserve Geocoding?
Geocoding is expensive:
- **API costs**: Each geocoding request costs money (if using paid service)
- **Rate limits**: Geocoding services have rate limits
- **Performance**: Geocoding thousands of addresses on every sync would be slow
- **Stability**: Coordinates for the same address should remain consistent

By preserving geocoding data when addresses haven't changed, we avoid redundant API calls.

## Testing Considerations

### Why No Unit Tests?
We attempted to create unit tests for this method but encountered technical challenges:

1. **Memory Corruption**: Creating `CNMutableContact` objects in tests causes malloc errors
2. **Framework Coupling**: Method is tightly coupled to iOS Contacts framework
3. **SwiftData Integration**: Requires SwiftData model container, making tests complex
4. **Private Implementation**: Testing private methods is generally discouraged

### Alternative Testing Approaches

1. **Integration Tests**: Test `syncContacts()` end-to-end with real or mocked CNContactStore
2. **Manual Testing**: Verify behavior by:
   - Syncing contacts
   - Modifying contacts in iOS Contacts
   - Re-syncing and verifying updates
   - Checking that geocoded addresses remain geocoded if address unchanged
3. **Production Monitoring**: Log warnings when geocoding data is cleared (already implemented)

## Error Handling

This method does not throw errors. It assumes:
- `friend` is a valid SwiftData model
- `contact` is a valid CNContact with proper data
- The caller (syncContacts) handles errors at a higher level

## Performance Considerations

- **Array Operations**: Replaces entire arrays rather than diffing (simpler, predictable)
- **Geocoding Preservation**: Prevents expensive re-geocoding of unchanged addresses
- **No Database Writes**: Does not call `modelContext.save()` (caller's responsibility)

## Related Code

- **LabeledPostalAddress.create()**: Factory method for address creation with geocoding preservation
  - Location: `Friend.swift:60-105`
  - See: [GEOCODING_HASH_VALIDATION.md](./GEOCODING_HASH_VALIDATION.md)

- **detectChanges()**: Determines if contact needs updating
  - Location: `ContactsManager.swift:311-322`
  - Compares modification dates

- **mapContactToFriend()**: Creates new Friend from CNContact
  - Location: `ContactsManager.swift:194-244`
  - Similar logic for initial creation

## Example Usage (Internal)

```swift
// Called during sync process in ContactsManager.syncContacts()
for cnContact in cnContacts {
    if let existingFriend = friendsByIdentifier[cnContact.identifier] {
        if detectChanges(existing: existingFriend, new: cnContact) {
            updateFriend(existingFriend, from: cnContact)  // ← This method
        }
    }
}
```

## Debug Logging

The method includes debug output for geocoding preservation:
```swift
print("✅ PRESERVED geocoding: \(street), \(city) → (\(lat), \(lon))")
print("❌ ADDRESS CHANGED - not preserving:")
```

This helps verify that geocoding preservation is working correctly in production.

## Known Limitations

1. **No Field-Level Diffing**: Updates all fields even if only one changed (acceptable for performance)
2. **Label Localization**: Uses system localization for labels (CNLabeledValue.localizedString)
3. **No Conflict Resolution**: Last-write-wins (iOS Contacts is authoritative)
4. **Photo Data Size**: No size limits or optimization (assumes reasonable photo sizes)

## Future Improvements

Potential enhancements (not currently needed):
- [ ] Field-level diffing to minimize SwiftData change notifications
- [ ] Batch update optimization for many contacts
- [ ] More granular logging levels (debug vs production)
- [ ] Photo data compression/resizing

## Verification Checklist

To verify this method works correctly:
- [x] Basic fields update (names, organization)
- [x] Phone numbers sync correctly
- [x] Email addresses sync correctly
- [x] Postal addresses sync correctly
- [x] Geocoding data preserved for unchanged addresses
- [x] Geocoding data cleared for changed addresses
- [x] Photo updates work
- [x] Deleted flag resets correctly
- [x] No crashes or memory leaks
- [x] Performance acceptable for 3000+ contacts

All items verified through production use and manual testing.
