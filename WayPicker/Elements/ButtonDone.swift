//
//  ButtonDone.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ButtonDone: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        ZStack{
                    Rectangle()
                .fill(theme.primaryButton)
                        .frame(width: 350.0, height: 100.0)
                    Text("DONE").font(.custom("Quicksand",                   size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(theme.secondaryButton)
                        .kerning(2)
                }
    }
}

struct ButtonDone_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDone()
    }
}
