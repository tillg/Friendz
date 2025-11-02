# Feature: Settings

We want to add a screen with settings and technical information.

## Requirements

* An extra button in the toolbar for settings
* Opens an extra view with different sections, one after the other
* Section: _Sync from contacts_
  * Open another View just for this topic
  * At the top an explanation along the lines of: "We read the data from your iOS contacts. We then add it to your friends list. We don't write anything to the iOS Contacts."
  * A Button "Sync from iOS Contacts"
  * Under the button a line "Last sync: 3 weeks ago"
  * If clicked the button gets disabled and we see the progress bar
  * When done we see some stats: How long did it take, how many contacts were retrieved.
* All data for the settings are stored in User Settings on the device
* Syncing from iOS Contacts should not happen anymore at every startup
* That's it for now, there will be more system settings coming later

---

## Technical Architecture Plan

### 1. Current Codebase Context

**Existing Infrastructure:**
- ContactsManager currently syncs automatically at app startup (ContentView.swift:40)
- ContactsManager tracks sync progress (syncProgress property, 0.0 to 1.0)
- ActivityStatusManager exists for tracking sync status with progress
- App uses SwiftUI with @Environment pattern for dependency injection
- No existing settings infrastructure or UserDefaults storage

### 2. Architectural Decisions

**Settings Storage: UserDefaults with @AppStorage**
- **Rationale**: Native SwiftUI integration, automatic UI updates, simple key-value storage perfect for settings
- **Trade-offs**: Limited to property list types (sufficient for our needs)

**UI Structure: Modal Sheets for Settings Views**
- **Rationale**: Modal presentation keeps navigation simple, aligns with iOS settings patterns, doesn't interfere with existing NavigationSplitView
- **Trade-offs**: Modal requires explicit dismissal, but provides clear context separation

**Sync Metadata Storage**
- **Rationale**: Store lastSyncDate, duration, and contact count in UserDefaults (lightweight display values)
- **Trade-offs**: Separate from Friend model data, but appropriate for app-level metadata

**ContactsManager Changes**
- **Rationale**: Keep existing sync method, just remove automatic invocation
- **Trade-offs**: None - preserves working code while changing behavior

**Progress Tracking**
- **Rationale**: Use existing ActivityStatusManager for live progress, UserDefaults for historical data
- **Trade-offs**: Two sources of truth, but with clear separation (live vs. historical)

**First Launch Behavior**
- **Rationale**: Sync automatically on first app launch to populate initial data
- **Implementation**: Check if lastSyncDate is nil, trigger automatic sync if needed

**SettingsStore Injection**
- **Rationale**: Inject SettingsStore via @Environment for better testability and SwiftUI integration
- **Implementation**: Create instance in FriendzApp and inject using .environment()

### 3. Implementation Tasks

#### Task 1: Create Settings Button in ContentView Toolbar
- Add settings gear icon button to toolbar (navigationBarTrailing position)
- Button uses SF Symbol "gearshape" 
- Tapping button presents SettingsView as modal sheet
- Ensure button positioning doesn't conflict with existing map button
- **Complexity**: Low

#### Task 2: Create SettingsView with Navigation Structure
- Build main settings screen with section-based layout
- View presented as modal sheet with navigation bar
- Contains "Done" button in toolbar to dismiss
- Has "Sync from Contacts" section with disclosure indicator
- Tapping sync section navigates to SyncSettingsView
- Follows iOS settings design patterns (grouped list style)
- **Complexity**: Low

#### Task 3: Create UserDefaults Storage Structure
- Define keys for: lastSyncDate, lastSyncDuration, lastSyncContactCount
- Create SettingsStore class with @AppStorage properties
- Properties accessible throughout app via @Environment
- Values persist across app launches
- **Complexity**: Low

#### Task 4: Build SyncSettingsView UI
- Explanatory text at top: "We read the data from your iOS contacts and add it to your friends list. We don't write anything to iOS Contacts."
- "Sync from iOS Contacts" button (disabled during sync)
- "Last sync: [relative time]" display (e.g., "3 weeks ago", "Never")
- Progress bar during sync (using ContactsManager.syncProgress)
- Post-sync stats display: duration and contact count
- Handle multiple UI states: idle, syncing, completed
- View should prevent dismissal during sync (disable navigation/close gestures)
- **Complexity**: Medium

#### Task 5: Remove Automatic Sync at Startup (except first launch)
- Remove automatic ContactsManager.syncContacts call from ContentView
- App launches without triggering contact sync (except first launch)
- Add first-launch detection: if lastSyncDate is nil, trigger sync automatically
- Geocoding manager still initializes and scans as before
- No regression in other startup behaviors
- **Complexity**: Low

#### Task 6: Implement Manual Sync with Statistics Tracking
- Connect sync button to ContactsManager.syncContacts
- Track sync start time and calculate duration
- Store lastSyncDate, duration, and contact count in UserDefaults
- Update UI in real-time during sync (progress bar)
- Display completion stats immediately after sync
- Add haptic feedback on sync completion (using UINotificationFeedbackGenerator)
- **Complexity**: Medium

#### Task 7: Add Relative Time Formatting
- Create utility to format dates as relative strings ("3 weeks ago", "Just now")
- Handle nil date (shows "Never")
- Show "Just now" for < 1 minute
- Use appropriate units (minutes, hours, days, weeks, months, years)
- Use RelativeDateTimeFormatter for localization
- **Complexity**: Low

#### Task 8: Handle Sync Errors in Settings Context
- Display sync errors appropriately in SyncSettingsView
- Permissions checked when sync starts (not before)
- Show alert for permission errors with "Open Settings" option
- Error state doesn't prevent future sync attempts
- Clear error messaging for user understanding
- **Complexity**: Low

#### Task 9: Extend Settings Structure for Future Additions
- Design SettingsView with extensible section structure
- Ensure new sections can be easily added later
- Use proper grouping and styling for section headers
- **Complexity**: Low

### 4. Files to Create/Modify

**New Files:**
- `SettingsView.swift` - Main settings screen with section list
- `SyncSettingsView.swift` - Detailed sync settings with button, progress, and stats
- `SettingsStore.swift` - UserDefaults wrapper with @AppStorage properties

**Modified Files:**
- `ContentView.swift` - Add settings button to toolbar, remove auto-sync from .task
- `FriendzApp.swift` - Inject SettingsStore into environment

### 5. Implementation Notes

**Key Behaviors:**
- Settings structure designed to accommodate future sections easily
- View dismissal blocked during active sync to prevent interruption
- Haptic feedback provided on sync completion for better UX
- Permissions checked lazily when sync starts (not preemptively)

### 6. Data Model

**UserDefaults Keys:**
```
lastSyncDate: Date?
lastSyncDuration: TimeInterval
lastSyncContactCount: Int
```

**SettingsStore Structure:**
```swift
@Observable
class SettingsStore {
    @AppStorage("lastSyncDate") var lastSyncDate: Date?
    @AppStorage("lastSyncDuration") var lastSyncDuration: TimeInterval = 0
    @AppStorage("lastSyncContactCount") var lastSyncContactCount: Int = 0
}
```