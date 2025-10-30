# Activity Display Feature

## Overview

The app performs two types of background activities that users should be aware of:

1. **Contact Syncing**: Importing and syncing contacts from iOS Contacts
2. **Geocoding**: Converting friend addresses to geographic coordinates for map display

The challenge is to communicate this activity to users in a way that is informative but not intrusive.

## Current State

- No clear indication of when syncing or geocoding is happening
- Users may not understand why friends don't appear on the map immediately
- No feedback on progress or completion

## Selected Solution: Subtle Status Bar

### Overview

A thin, collapsible status bar at the top of the content area that shows current activity. This provides just-in-time information without blocking the UI or being overly intrusive.

### Visual Design

#### Basic Appearance

- **Height**: 40-50pt (compact but readable)
- **Position**: Below navigation bar, above content
- **Background**: `.ultraThinMaterial` with subtle system color tint
  - Blue tint during active operations
  - Green tint for success states
  - Red tint for errors
- **Shadow**: Subtle shadow (2pt) to separate from content
- **Animation**: Smooth slide-down entrance, fade-out exit

#### Content Layout

```
┌─────────────────────────────────────────────┐
│ [Icon] Activity text...  [Progress] [×]     │
└─────────────────────────────────────────────┘
```

**Left Section**:

- SF Symbol icon (16pt, medium weight)
  - `arrow.triangle.2.circlepath` for syncing
  - `location` for geocoding
  - `checkmark.circle.fill` for success
- Text label (system font, regular weight)
  - Primary message about current activity

**Center Section**:

- Progress indicator (when applicable)
  - Circular progress ring (20pt diameter)
  - OR text-based progress "45/120"
  - OR indeterminate spinner for unknown duration

**Right Section**:

- Dismiss button (×) - 28pt tap target
- Optional: expand chevron (›) when more details available

### States and Transitions

#### 1. Contact Syncing States

**Initial Sync** (first time or after app reinstall):

- Appears immediately on app launch
- Shows: `"Syncing contacts..."` with spinner
- Transitions to progress when count is known: `"Syncing contacts... 45/120"`
- Duration: Variable (depends on contact count)

**Incremental Sync** (periodic background updates):

- Only appears if taking >2 seconds
- Shows: `"Checking for contact updates..."` with spinner
- Transitions to: `"Syncing 3 new contacts..."`
- Auto-dismisses after 2 seconds on completion

**Success State**:

- Shows briefly (3 seconds): `"✓ Contacts synced"`
- Green tint background
- Fade out animation

**Error State**:

- Persists until dismissed: `"⚠ Contact sync failed - Tap to retry"`
- Red tint background
- Tappable to retry sync

#### 2. Geocoding States

**Active Geocoding**:

- Appears when geocoding queue has items
- Shows: `"Locating addresses... 12/45"`
- Progress bar or numeric indicator
- Updates in batches (not per address) to avoid flickering

**Batch Complete**:

- Brief success message (2 seconds): `"✓ 12 locations found"`
- Green tint background
- Fade out animation

**Partial Success**:

- Shows: `"⚠ 10/12 locations found - 2 failed"`
- Yellow/orange tint
- Tappable to see which addresses failed
- Auto-dismisses after 5 seconds

**All Failed**:

- Shows: `"⚠ Unable to locate addresses"`
- Red tint background
- Tappable for more info
- Manual dismiss required

### Interaction Patterns

#### Tap to Expand (Optional Enhancement)

When user taps the status bar (except on dismiss ×):

- Expands to show more details
- **For Contact Sync**:
  - Shows which contacts are new/updated
  - "Syncing: John Doe, Jane Smith, ..."
  - Option to cancel sync
- **For Geocoding**:
  - Shows which addresses are being processed
  - "Locating: John's work address, Jane's home, ..."
  - List of failed addresses with reasons

#### Dismiss Behavior

- **Manual Dismiss**: Tap × button
  - Immediate fade-out animation
  - Activity continues in background
  - Can be restored via pull-down gesture or app restart
- **Auto-Dismiss**:
  - Success states: 2-3 seconds
  - Error states: Persist until manual dismiss
  - Active operations: Remain visible

#### Pull-Down to Restore

If user dismissed the status bar but activity is still ongoing:

- Pull-down gesture on list view reveals status bar again
- Status bar slides back into view
- Useful if user accidentally dismissed

### Multiple Concurrent Activities

When both syncing and geocoding are happening:

**Option A: Show Both** (Recommended)

- Two stacked status bars
- Contact sync on top, geocoding below
- Each independently dismissible

**Option B: Combined Message**

- Single bar with combined message
- "Syncing contacts & locating addresses..."
- Tap to see breakdown

**Option C: Priority System**

- Show highest priority activity only
- Priority order: Errors > Sync > Geocoding
- Tap to cycle through active operations

### Technical Implementation

#### State Management

```swift
@Observable
class ActivityStatusManager {
    var contactSyncStatus: SyncStatus = .idle
    var geocodingStatus: GeocodingStatus = .idle

    enum SyncStatus {
        case idle
        case syncing(progress: Progress)
        case success(count: Int)
        case error(Error)
    }

    enum GeocodingStatus {
        case idle
        case locating(current: Int, total: Int)
        case success(found: Int, failed: Int)
        case error(Error)
    }
}
```

#### SwiftUI View

```swift
struct ActivityStatusBar: View {
    @Environment(ActivityStatusManager.self) private var activityManager
    @State private var isExpanded = false

    var body: some View {
        // Status bar implementation
    }
}
```

#### Placement in App

Add to main view hierarchy:

```swift
NavigationStack {
    VStack(spacing: 0) {
        ActivityStatusBar()
        ContentView()
    }
}
```

### Accessibility

#### VoiceOver Support

- Announce activity start: "Syncing contacts"
- Announce progress updates: "45 of 120 contacts synced"
- Announce completion: "Contact sync complete"
- Dismiss button labeled: "Dismiss sync status"
- Expanded details available via custom rotor

#### Dynamic Type

- Text scales with user's preferred text size
- Minimum height adjusts to accommodate larger text
- Progress indicators scale proportionally

#### Reduce Motion

- Disable slide/fade animations
- Use simple appear/disappear transitions
- Progress still visible via text/numbers

#### Color Blind Accessibility

- Don't rely solely on color for status
- Always include icon indicator
- Success = checkmark icon + green
- Error = warning icon + red
- Active = circular arrows icon + blue

### Performance Considerations

#### Update Throttling

- Batch progress updates (max 1 update per 0.5 seconds)
- Avoid UI updates for every single contact/address
- Use debouncing for rapid state changes

#### Memory Impact

- Status bar only renders when visible
- Release expanded details when collapsed
- Lazy load detailed activity lists

#### Animation Performance

- Use GPU-accelerated animations
- Avoid complex blend modes
- Pre-render static elements

### User Preferences (Future)

Allow users to customize behavior:

- **Show activity indicators**: Always / Only errors / Never
- **Auto-dismiss success**: On / Off
- **Notification style**: Banner / Toast / None
- **Detailed progress**: Show counts / Show percentage / Simple

### Error Handling Scenarios

#### Network Errors (Geocoding)

- Show: `"⚠ No internet connection"`
- Suggest: `"Addresses will be located when online"`
- Retry automatically when connection restored

#### Permission Errors (Contacts)

- Show: `"⚠ Contact access denied"`
- Action button: "Open Settings"
- Persists until permission granted

#### Rate Limiting (Geocoding API)

- Show: `"⚠ Geocoding paused - Retrying soon"`
- Automatic retry with exponential backoff
- Status updates when retry occurs

#### Corrupt Data

- Show: `"⚠ Some contacts couldn't be synced"`
- Tappable to see problem contacts
- Option to report issue

### Analytics and Debugging

Track for improvement:

- How often users dismiss vs. let auto-dismiss
- How often users tap to expand
- Average duration each activity type takes
- Frequency of errors
- User preference patterns

### Future Enhancements


1. **Manual Triggers**: Button to force sync/geocoding
1. **Rich Notifications**: Lock screen notifications for long operations
