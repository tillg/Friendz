# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Friendz is an iOS app built with SwiftUI and SwiftData that tracks contacts from the user's iOS Contacts and displays their locations on a map.

**Current Status**: Early development phase with basic SwiftData model structure in place. The planned map feature is not yet implemented.

## Building and Running

Open `Friendz/Friendz.xcodeproj` in Xcode and use standard Xcode commands:
- **Build**: Cmd+B
- **Run**: Cmd+R (requires iOS simulator or device)
- **Clean**: Cmd+Shift+K

The project uses Xcode's native build system (no external build tools or package managers required).

## Architecture

### Data Layer (SwiftData)

The app uses SwiftData for persistent storage with a single model:

- **Friend.swift**: SwiftData `@Model` class storing contact information (firstName, lastName, UUID)
- The model container is configured at the app level in `FriendzApp.swift:17` using `.modelContainer(for: Friend.self)`
- Access the model context via SwiftUI's `@Environment(\.modelContext)` in views
- Query data using `@Query` property wrapper (see `ContentView.swift:13`)

### App Structure

- **FriendzApp.swift**: Main app entry point with SwiftData model container setup
- **ContentView.swift**: Root view displaying friends list in a NavigationStack
- **Friend.swift**: SwiftData model representing a contact

### Planned Features (Not Yet Implemented)

According to README.md, the app should:
1. Load contacts from iOS Contacts at startup
2. Display contacts on a map with their locations

Currently, only basic list display is implemented. Future work will require:
- ContactsKit framework integration for iOS Contacts access
- MapKit integration for map display
- Location data storage in the Friend model

## Key Considerations

- **Contacts Permission**: Will need NSContactsUsageDescription in Info.plist when implementing contact loading
- **Location Data**: Friend model will need location fields (latitude/longitude) for map features
- The app follows standard SwiftUI app lifecycle with SwiftData integration pattern
