//
//  SyncSettingsView.swift
//  Friendz
//
//  Created by Claude Code
//

import SwiftUI
import SwiftData

struct SyncSettingsView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(ContactsManager.self) private var contactsManager
    @Environment(ActivityStatusManager.self) private var activityStatusManager
    @Environment(SettingsStore.self) private var settingsStore
    @Environment(\.dismiss) private var dismiss

    @State private var isSyncing = false
    @State private var syncStartTime: Date?
    @State private var showError = false
    @State private var errorMessage = ""

    var body: some View {
        List {
            Section {
                Text("We read the data from your iOS contacts and add it to your friends list. We don't write anything to iOS Contacts.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Section {
                if isSyncing {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            ProgressView()
                            Text("Syncing contacts...")
                                .foregroundStyle(.secondary)
                        }

                        if case .syncing(let progress) = activityStatusManager.contactSyncStatus,
                           let progress = progress {
                            ProgressView(value: progress.percentage)
                                .tint(.blue)
                            Text("\(progress.current) of \(progress.total)")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                } else {
                    Button {
                        startSync()
                    } label: {
                        Label("Sync from iOS Contacts", systemImage: "arrow.triangle.2.circlepath")
                    }
                }
            }

            Section {
                if let lastSync = settingsStore.lastSyncDateValue {
                    LabeledContent("Last sync") {
                        Text(lastSync.relativeTimeString())
                            .foregroundStyle(.secondary)
                    }

                    if settingsStore.lastSyncDuration > 0 {
                        LabeledContent("Duration") {
                            Text(formatDuration(settingsStore.lastSyncDuration))
                                .foregroundStyle(.secondary)
                        }
                    }

                    if settingsStore.lastSyncContactCount > 0 {
                        LabeledContent("Contacts synced") {
                            Text("\(settingsStore.lastSyncContactCount)")
                                .foregroundStyle(.secondary)
                        }
                    }
                } else {
                    Text("No sync performed yet")
                        .foregroundStyle(.secondary)
                }
            } header: {
                Text("Sync Status")
            }
        }
        .navigationTitle("Sync Settings")
        .navigationBarTitleDisplayMode(.inline)
        .interactiveDismissDisabled(isSyncing)
        .alert("Sync Error", isPresented: $showError) {
            if errorMessage.contains("authorized") || errorMessage.contains("permission") {
                Button("Open Settings") {
                    if let url = URL(string: UIApplication.openSettingsURLString) {
                        UIApplication.shared.open(url)
                    }
                }
                Button("OK", role: .cancel) {}
            } else {
                Button("OK", role: .cancel) {}
            }
        } message: {
            Text(errorMessage)
        }
    }

    private func startSync() {
        isSyncing = true
        syncStartTime = Date()

        Task {
            await contactsManager.syncContacts(modelContext: modelContext)

            if let error = contactsManager.errorMessage {
                isSyncing = false
                syncStartTime = nil
                errorMessage = error
                showError = true

                // Haptic feedback on error
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.error)
            } else {
                // Sync successful - record stats
                if let startTime = syncStartTime {
                    settingsStore.recordSyncCompletion(startTime: startTime, modelContext: modelContext)
                }

                // Haptic feedback on success
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)

                isSyncing = false
                syncStartTime = nil
            }
        }
    }

    private func formatDuration(_ duration: TimeInterval) -> String {
        if duration < 1 {
            return "< 1s"
        } else if duration < 60 {
            return String(format: "%.0fs", duration)
        } else {
            let minutes = Int(duration / 60)
            let seconds = Int(duration.truncatingRemainder(dividingBy: 60))
            return "\(minutes)m \(seconds)s"
        }
    }
}

extension Date {
    func relativeTimeString() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}

#Preview {
    NavigationStack {
        SyncSettingsView()
            .environment(SettingsStore())
            .environment(ContactsManager())
            .environment(ActivityStatusManager())
    }
}
