//
//  Crossroad4.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 18.12.2022.
//

import SwiftUI

struct Crossroad4: View {
    var referenceDimension: CGFloat
    var theme: Theme
    
        var body: some View {
            ZStack {
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.8)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.4, height: referenceDimension*0.25).offset(x: referenceDimension*0.20)
            }
        }
    
}

struct Crossroad4_Previews: PreviewProvider {
    static var previews: some View {
        Crossroad4(referenceDimension: 150.0, theme: BasicTheme())
    }
}
