# FEATURE: Load contacts

* When the app starts, it should load all the contacts from my contacts. 
* This should be done  by a class called ContactsManager. 
* This loading process should not block the UI, in the UI we see a small indicator that tells us, that this process is  running. 
* All the contacts should be stored in "Friend" classes (that are SwiftData Models, thus persisted).
* When the app starts the next time, it already has all the data (coming from the SwiftData Container), but still loads the contacts (from Contacts), to maybe add / remove or change some contacts if they changed since the last time the app ran.
* Fields that we want to have in our Friend class are Firstname, LastName, MiddleName, Addresses, Photo, Emails, Phone no's - and maybe some more

---

## Technical Implementation Plan

### 1. SwiftData Model Updates

**Expand Friend Model** (`Friend.swift`)

Add new fields to support comprehensive contact information:
- `middleName: String?`
- `phoneNumbers: [LabeledValue]` - Array of phone numbers with labels (Mobile, Work, Home, etc.)
- `emailAddresses: [LabeledValue]` - Array of email addresses with labels
- `postalAddresses: [LabeledPostalAddress]` - Array of addresses with labels
- `photoData: Data?` - Store contact photo as original from Contacts (full resolution)
- `contactIdentifier: String` - CNContact identifier for tracking
- `lastModifiedDate: Date?` - Track when contact was last updated
- `isDeleted: Bool = false` - Soft delete flag for removed contacts (filtered before display)

**Create supporting structs**:
```swift
struct LabeledValue: Codable {
    let label: String  // e.g., "Mobile", "Work", "Home"
    let value: String
}

struct LabeledPostalAddress: Codable {
    let label: String  // e.g., "Work", "Home"
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let country: String
}
```

**CloudKit Sync Configuration**:
- Enable CloudKit sync for Friend model in SwiftData model container configuration
- Configure model container with `.cloudKitContainerOptions` to sync across user's devices
- Friend data will automatically sync across devices on the same Apple account

### 2. ContactsManager Service

**Create new file**: `Services/ContactsManager.swift`

**Responsibilities**:
- Request contacts permission (CNContactStore authorization)
- Fetch all contacts using CNContactStore
- Map CNContact → Friend model
- Perform sync logic (add/update/delete)
- Publish loading state for UI

**Key Properties**:
- `@Published var isLoading: Bool = false`
- `@Published var syncStatus: SyncStatus` (enum: idle, syncing, completed, error)
- `private let contactStore = CNContactStore()`

**Key Methods**:
- `requestAccess() async throws -> Bool` - Request contacts permission
- `syncContacts(modelContext: ModelContext) async throws` - Main sync method
- `fetchAllContacts() async throws -> [CNContact]` - Fetch from CNContactStore
- `mapContactToFriend(_ contact: CNContact) -> Friend` - Convert CNContact to Friend
- `detectChanges(existing: Friend, new: CNContact) -> Bool` - Check if contact changed

### 3. Sync Strategy

**Change Detection Approach**:

Use CNContact's modification date and identifier:
1. Store `contactIdentifier` (CNContact.identifier) in Friend model
2. Compare CNContact's modification date with Friend's `lastModifiedDate`
3. If dates differ, update the Friend record

**Deletion Detection**:
1. After fetching all contacts, create a Set of current contact identifiers
2. Query all Friend records that are not marked as deleted
3. For any Friend whose `contactIdentifier` is not in the current Set, mark `isDeleted = true`
4. Keep deleted records for potential future features (undo, history, etc.)

**Sync Algorithm**:
```
1. Fetch all CNContacts from device
2. Fetch all Friend records from SwiftData (where isDeleted == false)
3. Create dictionary: contactIdentifier → Friend
4. For each CNContact:
   - If Friend exists with that identifier:
     - Compare modification dates
     - Update Friend if CNContact is newer
   - If Friend doesn't exist:
     - Create new Friend from CNContact
5. Mark Friends as deleted if their identifier is not in fetched CNContacts
```

### 4. UI Changes

**ContentView Updates**:

Add sync state display:
- Show loading indicator at top when `isLoading == true`
- Use `ProgressView` with text "Syncing contacts..."
- Display sync status/errors if needed
- Update `@Query` to filter out deleted contacts: `@Query(filter: #Predicate<Friend> { !$0.isDeleted })`
- This ensures deleted contacts are not displayed in the list

**App Lifecycle Integration** (`FriendzApp.swift`):

Add ContactsManager as `@StateObject`:
```swift
@StateObject private var contactsManager = ContactsManager()
```

Trigger sync on app launch:
```swift
.task {
    await contactsManager.syncContacts(modelContext: modelContext)
}
```

Pass ContactsManager to ContentView via environment or direct property.

### 5. Permissions & Privacy

**Info.plist Updates**:
- Add `NSContactsUsageDescription` key with user-friendly explanation
- Example: "Friendz needs access to your contacts to display them on the map and keep your friends list up to date."

**Permission Flow**:
1. On first launch, request permission via `CNContactStore.requestAccess()`
2. If denied, show alert explaining the app needs contacts access
3. Provide button to open Settings if permission is denied

### 6. Error Handling

**Error Types to Handle**:
- Permission denied
- Contacts store access failure
- SwiftData persistence errors
- Memory issues with large contact lists

**User Feedback**:
- Show error alerts for permission issues
- Display retry option on sync failure
- Log errors for debugging

### 7. Performance Considerations

**Non-Blocking Implementation**:
- Use `async/await` for all contact operations
- Run sync in background task using `.task` modifier
- Update UI on main actor via `@Published` properties
- Sync all contacts without batch processing initially (add batching only if performance issues arise)

**Photo Data Handling**:
- Store photos as-is from Contacts (full resolution) without resizing
- Consider lazy loading photos in UI to prevent memory issues with large lists
- CloudKit will handle photo data sync across devices

**CloudKit Sync**:
- Friend model will automatically sync across user's devices via CloudKit
- Initial sync may take time depending on contact count
- CloudKit handles conflict resolution automatically

### 8. Testing Strategy

**Manual Testing Checklist**:
- [ ] First launch: permission request appears
- [ ] Contacts load and persist to SwiftData
- [ ] UI shows loading indicator during sync
- [ ] Second launch: existing contacts display immediately
- [ ] Background sync updates modified contacts
- [ ] Deleted device contacts are marked as deleted in app (filtered from display)
- [ ] New device contacts appear after sync
- [ ] App handles permission denial gracefully
- [ ] Large contact lists (100+) sync without blocking UI
- [ ] Contact labels (Work, Mobile, Home) are preserved for phones/emails/addresses
- [ ] Contact photos are stored and displayed correctly
- [ ] CloudKit sync: changes sync across devices on same Apple account

### 9. Implementation Order

1. Update Friend model with new fields (including `isDeleted`, `contactIdentifier`, `lastModifiedDate`)
2. Create supporting structs: `LabeledValue` and `LabeledPostalAddress`
3. Configure CloudKit sync in model container (FriendzApp.swift)
4. Implement ContactsManager class with basic fetch and permission handling
5. Implement CNContact → Friend mapping (preserving labels for phone/email/address)
6. Add sync logic (add/update detection using modification dates)
7. Add deletion detection (mark `isDeleted = true` for removed contacts)
8. Integrate ContactsManager with FriendzApp lifecycle
9. Update ContentView with loading indicator and isDeleted filter
10. Add error handling and user feedback
11. Update Info.plist with `NSContactsUsageDescription`
12. Test thoroughly with various contact scenarios (including CloudKit sync across devices)

### 10. Design Decisions

The following design decisions have been finalized:

1. **Photo Storage**: Store contact photos as-is from Contacts (full resolution, no resizing)
2. **Sync Frequency**: Sync only on app launch (no periodic background sync)
3. **Delete Strategy**: Use soft delete with `isDeleted` flag; filter before displaying to users
4. **Contact Fields**: Store all addresses/phones/emails including their labels (Work, Mobile, Home, etc.)
5. **CloudKit Sync**: Enable CloudKit sync so Friend data syncs across all devices on the same Apple account
6. **Contact Groups**: Ignore iOS contact groups for this implementation
7. **Performance**: Sync all contacts without batching; add batch processing only if performance issues arise

---

**Status**: ✅ Plan finalized and ready for implementation. All design decisions have been made.