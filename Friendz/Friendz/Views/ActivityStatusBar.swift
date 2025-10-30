//
//  ActivityStatusBar.swift
//  Friendz
//
//  Created by Claude Code on 30.10.25.
//

import SwiftUI

/// A subtle status bar that shows background activity (contact syncing and geocoding)
struct ActivityStatusBar: View {
    @Environment(ActivityStatusManager.self) private var activityManager
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    var body: some View {
        VStack(spacing: 0) {
            // Contact sync status bar
            if activityManager.shouldShowContactSync() {
                ContactSyncStatusView(status: activityManager.contactSyncStatus) {
                    activityManager.dismissContactSync()
                }
                .transition(reduceMotion ? .identity : .move(edge: .top).combined(with: .opacity))
            }

            // Geocoding status bar
            if activityManager.shouldShowGeocoding() {
                GeocodingStatusView(status: activityManager.geocodingStatus) {
                    activityManager.dismissGeocoding()
                }
                .transition(reduceMotion ? .identity : .move(edge: .top).combined(with: .opacity))
            }
        }
        .animation(.easeInOut(duration: 0.3), value: activityManager.shouldShowContactSync())
        .animation(.easeInOut(duration: 0.3), value: activityManager.shouldShowGeocoding())
    }
}

// MARK: - Contact Sync Status View

private struct ContactSyncStatusView: View {
    let status: ActivityStatusManager.ContactSyncStatus
    let onDismiss: () -> Void

    var body: some View {
        StatusBarView(
            icon: iconName,
            text: statusText,
            tint: tintColor,
            showProgress: showProgress,
            progressValue: progressValue,
            onDismiss: onDismiss
        )
    }

    private var iconName: String {
        switch status {
        case .syncing:
            return "arrow.triangle.2.circlepath"
        case .success:
            return "checkmark.circle.fill"
        case .error:
            return "exclamationmark.triangle.fill"
        case .idle:
            return ""
        }
    }

    private var statusText: String {
        switch status {
        case .syncing(let progress):
            if let progress = progress {
                return "Syncing contacts... \(progress.current)/\(progress.total)"
            } else {
                return "Syncing contacts..."
            }
        case .success(let count):
            return "✓ \(count) contacts synced"
        case .error(let message):
            return "⚠ \(message)"
        case .idle:
            return ""
        }
    }

    private var tintColor: Color {
        switch status {
        case .syncing:
            return .blue
        case .success:
            return .green
        case .error:
            return .red
        case .idle:
            return .blue
        }
    }

    private var showProgress: Bool {
        if case .syncing(let progress) = status, progress != nil {
            return true
        }
        return false
    }

    private var progressValue: Double {
        if case .syncing(let progress) = status, let progress = progress {
            return progress.percentage
        }
        return 0.0
    }
}

// MARK: - Geocoding Status View

private struct GeocodingStatusView: View {
    let status: ActivityStatusManager.GeocodingStatus
    let onDismiss: () -> Void

    var body: some View {
        StatusBarView(
            icon: iconName,
            text: statusText,
            tint: tintColor,
            showProgress: showProgress,
            progressValue: progressValue,
            onDismiss: onDismiss
        )
    }

    private var iconName: String {
        switch status {
        case .locating:
            return "location"
        case .success:
            return "checkmark.circle.fill"
        case .error:
            return "exclamationmark.triangle.fill"
        case .idle:
            return ""
        }
    }

    private var statusText: String {
        switch status {
        case .locating(let current, let total):
            return "Locating... \(current)/\(total)"
        case .success(let found, let failed):
            if failed == 0 {
                return "✓ \(found) locations found"
            } else {
                return "⚠ \(found)/\(found + failed) locations found - \(failed) failed"
            }
        case .error(let message):
            return "⚠ \(message)"
        case .idle:
            return ""
        }
    }

    private var tintColor: Color {
        switch status {
        case .locating:
            return .blue
        case .success(_, let failed):
            return failed > 0 ? .orange : .green
        case .error:
            return .red
        case .idle:
            return .blue
        }
    }

    private var showProgress: Bool {
        if case .locating = status {
            return true
        }
        return false
    }

    private var progressValue: Double {
        if case .locating(let current, let total) = status, total > 0 {
            return Double(current) / Double(total)
        }
        return 0.0
    }
}

// MARK: - Base Status Bar View

private struct StatusBarView: View {
    let icon: String
    let text: String
    let tint: Color
    let showProgress: Bool
    let progressValue: Double
    let onDismiss: () -> Void

    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    var body: some View {
        HStack(spacing: 12) {
            // Icon with animation
            if showProgress {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .frame(width: 16, height: 16)
            } else {
                Image(systemName: icon)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(showProgress && !reduceMotion ? 360 : 0))
                    .animation(
                        showProgress && !reduceMotion ? .linear(duration: 1).repeatForever(autoreverses: false) : .default,
                        value: showProgress
                    )
            }

            // Status text
            Text(text)
                .font(.system(.subheadline, design: .default))
                .foregroundColor(.white)
                .lineLimit(1)

            Spacer()

            // Dismiss button
            Button(action: onDismiss) {
                Image(systemName: "xmark")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.white.opacity(0.8))
                    .frame(width: 28, height: 28)
            }
            .accessibilityLabel("Dismiss")
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .frame(minHeight: 44)
        .background(
            tint.opacity(0.8)
                .background(.ultraThinMaterial)
        )
        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 2)
    }
}

// MARK: - Preview

#Preview("Contact Syncing") {
    @Previewable @State var manager = ActivityStatusManager()

    VStack {
        ActivityStatusBar()
            .environment(manager)

        Spacer()

        Button("Start Sync") {
            manager.updateContactSync(.syncing(progress: SyncProgress(current: 45, total: 120)))
        }
        Button("Success") {
            manager.updateContactSync(.success(count: 120))
        }
        Button("Error") {
            manager.updateContactSync(.error(message: "Contact sync failed"))
        }
    }
}

#Preview("Geocoding") {
    @Previewable @State var manager = ActivityStatusManager()

    VStack {
        ActivityStatusBar()
            .environment(manager)

        Spacer()

        Button("Start Geocoding") {
            manager.updateGeocoding(.locating(current: 12, total: 45))
        }
        Button("Success") {
            manager.updateGeocoding(.success(found: 43, failed: 2))
        }
        Button("Error") {
            manager.updateGeocoding(.error(message: "Unable to locate addresses"))
        }
    }
}

#Preview("Multiple Activities") {
    @Previewable @State var manager = ActivityStatusManager()

    VStack {
        ActivityStatusBar()
            .environment(manager)

        Spacer()

        Button("Both Active") {
            manager.updateContactSync(.syncing(progress: SyncProgress(current: 45, total: 120)))
            manager.updateGeocoding(.locating(current: 12, total: 45))
        }
    }
}
