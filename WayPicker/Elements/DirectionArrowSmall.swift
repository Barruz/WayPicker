//
//  DirectionArrowSmall.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 01.01.2023.
//

import SwiftUI

struct DirectionArrowSmall: View {
    let theme = ThemeManager.shared.getTheme()
    
    var body: some View {
        Image("arrow-short-right")
            .renderingMode(.template)
            .foregroundColor(theme.secondaryTile)
    }
}

struct DirectionArrowSmall_Previews: PreviewProvider {
    static var previews: some View {
        DirectionArrowSmall()
    }
}
