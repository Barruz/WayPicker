//
//  Logo.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct Logo: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        HStack{
            Image("compass")
                .renderingMode(.template)
                .resizable()
                .foregroundColor(theme.logo)
                .frame(width: 45.0, height: 45.0)
            
            Text("WayPicker")
                .font(.custom("Pacifico",
                              size: 20))
            .foregroundColor(theme.logo)}
    
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
