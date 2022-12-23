//
//  Crossroad5.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 20.12.2022.
//

import SwiftUI

struct Crossroad5: View {
    var referenceDimension: CGFloat
    var theme: Theme
    
    var body: some View {
        ZStack {

            Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.4).offset(y: referenceDimension*0.19)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.84).rotationEffect(.degrees(45))
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.84, height: referenceDimension*0.25).rotationEffect(.degrees(45))
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.18, height: referenceDimension*0.18).offset(x: -referenceDimension*0.3, y: -referenceDimension*0.3)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.18, height: referenceDimension*0.18).offset(x: referenceDimension*0.3, y: -referenceDimension*0.3)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.18, height: referenceDimension*0.18).offset(x: -referenceDimension*0.3, y: referenceDimension*0.3)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.18, height: referenceDimension*0.18).offset(x: referenceDimension*0.3, y: referenceDimension*0.3)
            }
        
    }
}

struct Crossroad5_Previews: PreviewProvider {
    static var previews: some View {
        Crossroad5(referenceDimension: 150.0, theme: BasicTheme())
    }
}
