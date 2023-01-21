//
//  Checkmark.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct Checkmark: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        ZStack{
            Circle().fill(theme.checkmark)
                .frame(width: 55.0, height: 55.0)
            Text("✓").font(.custom("Quicksand",                   size: 30))
                .foregroundColor(theme.primary)
        }
        
    }
    
}

struct Checkmark_Previews: PreviewProvider {
    static var previews: some View {
        Checkmark()
    }
}
