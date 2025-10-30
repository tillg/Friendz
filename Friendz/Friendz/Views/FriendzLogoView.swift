//
//  FriendzLogoView.swift
//  Friendz
//
//  Created by Claude Code on 30.10.25.
//

import SwiftUI

/// The Friendz app logo using overlaid SF Symbols
struct FriendzLogoView: View {
    var size: CGFloat = 32
    var personRelSize = 1.1
    var personRelOffsetX = -0.8
    var personRelOffsetY = 0.2
    
    // Tunable parameters for easy adjustment
    var arrowSize: CGFloat { size }
    var personSize: CGFloat { size * personRelSize }
    var personOffsetX: CGFloat { size * personRelOffsetX}
    var personOffsetY: CGFloat { size * personRelOffsetY}

    var body: some View {
        ZStack(alignment: .center) {
            // Background: Dark green location marker (like Google Maps)
            Image(systemName: "mappin.and.ellipse")
                .font(.system(size: arrowSize))
                .foregroundStyle(Color.friendzGreen)

            // Foreground: Dark gray people icon
            Image(systemName: "person.2.fill")
                .font(.system(size: personSize))
                .foregroundStyle(Color(white: 0.3))
                .offset(x: personOffsetX, y: personOffsetY)
        }
        .frame(width: size, height: size)
    }
}

// MARK: - Preview

#Preview("Logo Sizes") {
    VStack(spacing: 40) {
        FriendzLogoView(size: 24)
        FriendzLogoView(size: 32)
        FriendzLogoView(size: 48)
        FriendzLogoView(size: 64)
    }
    .padding()
}
