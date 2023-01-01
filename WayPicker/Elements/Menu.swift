//
//  Menu.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct Menu: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        
        HStack {
            NavigationLink (destination: IntroView())            {Logo()}
            Spacer()
                .frame(width: 100.0)
            HStack{
                NavigationLink (destination: ThemeView()){ButtonPalette()}
                Spacer()
                    .frame(width: 15.0)
                NavigationLink (destination: InfoView()){ButtonInfo()}
            }
        }.background(theme.primary)

        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
