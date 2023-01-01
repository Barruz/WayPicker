//
//  ButtonPalette.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ButtonPalette: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        ZStack{
            Circle()
                .fill(theme.primaryButton)
                .frame(width: 43.0, height: 43.0)
            Image("palette")
                .renderingMode(.template)
                .resizable()
                .foregroundColor(theme.secondaryButton)
                .frame(width: 25.0, height: 25.0)
        }
    }
}

struct ButtonPalette_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPalette()
    }
}
