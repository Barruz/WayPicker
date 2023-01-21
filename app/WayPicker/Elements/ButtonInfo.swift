//
//  ButtonInfo.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ButtonInfo: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        ZStack{
            Circle()
                .fill(theme.primaryButton)
                .frame(width: 43.0, height: 43.0)
            Text("i")
                .font(.custom("Pacifico",
                              size: 30))
                .foregroundColor(theme.secondaryButton)
            .padding(.bottom, 5.0)}
    }
}

struct ButtonInfo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInfo()
    }
}
