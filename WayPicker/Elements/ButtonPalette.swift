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
                .frame(width: 60.0, height: 60.0)
            Image("palette")
                .renderingMode(.template)
                .resizable()
                .foregroundColor(theme.secondaryButton)
                .frame(width: 32.0, height: 32.0)
        }
    }
}

struct ButtonPalette_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPalette()
    }
}
