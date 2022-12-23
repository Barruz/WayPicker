//
//  Crossroad2.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 17.12.2022.
//

import SwiftUI

struct Crossroad2: View {
    var referenceDimension: CGFloat
    var theme: Theme
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(theme.primaryTile)
                .frame(width:  referenceDimension*0.25, height: referenceDimension*0.8)
            Rectangle().foregroundColor(theme.primaryTile)
                .frame(width: referenceDimension*0.8, height: referenceDimension*0.25).offset(y: -referenceDimension*0.28)
        }
    }
}

struct Crossroad2_Previews: PreviewProvider {
    static var previews: some View {
        Crossroad2(referenceDimension: 150.0, theme: BasicTheme())
    }
}
