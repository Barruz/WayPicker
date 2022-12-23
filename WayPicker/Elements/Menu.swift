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
        VStack{
            HStack {
                NavigationLink (destination: IntroView())
                {Logo()}
                Spacer()
                HStack{
                    NavigationLink (destination: ThemeView()){ButtonPalette()}
                    Spacer()
                        .frame(width: 15.0)
                    NavigationLink (destination: InfoView()){ButtonInfo()}
                }
            }
            .padding(.horizontal, 20.0)
            .padding(.bottom, 10.0)
            Divider()
                .overlay(theme.secondary)
                .padding(.top, -9.0)
               
        }}
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
