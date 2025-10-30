//
//  FriendzHeaderView.swift
//  Friendz
//
//  Created by Claude Code on 30.10.25.
//

import SwiftUI

/// Header view displaying the Friendz logo and app name
struct FriendzHeaderView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack() {
                FriendzLogoView()
                    .padding(.leading, 25)
                Text("friendz")
                    .font(.title2)
                Spacer()
            }
            .padding()
            Divider()
        }
    }
}

// MARK: - Preview

#Preview("Header") {
    FriendzHeaderView()
}

#Preview("Header with Content") {
    VStack(spacing: 0) {
        FriendzHeaderView()

        List {
            ForEach(0..<10) { index in
                Text("Item \(index)")
            }
        }
        .listStyle(.plain)
    }
}
