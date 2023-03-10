//
//  DirectionArrow.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct DirectionArrow: View {
    var direction: Direction;
    let theme = ThemeManager.shared.getTheme()

    var body: some View {
        if (direction == Direction.forward) {
            Image(systemName: "arrow.up")
                .foregroundColor(theme.secondary)
            .font(.system(size: 60, weight: .bold)) }
        else {
            Image("arrow")
                .renderingMode(.template)
                .foregroundColor(theme.secondary)
            .rotationEffect(direction == Direction.left ? Angle(degrees: 180) : Angle(degrees: 0))}
    }
}

struct DirectionArrow_Previews: PreviewProvider {
    static var previews: some View {
        DirectionArrow(direction: Direction.left)
    }
}
