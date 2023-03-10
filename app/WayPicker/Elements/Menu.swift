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
            NavigationLink (destination: IntroView())            {Logo().padding(.leading, 15.0)}
            Spacer().frame(width: 80.0)
            HStack{
                NavigationLink (destination: ThemeView()){ButtonPalette()}
                Spacer()
                    .frame(width: 8.0)
                NavigationLink (destination: InfoView()){ButtonInfo()
                    .padding(.trailing, 15.0)}
            }
        }

        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
