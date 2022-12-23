//
//  Crossroad6.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 20.12.2022.
//

import SwiftUI

struct Crossroad6: View {
    var referenceDimension: CGFloat
    var theme: Theme
    
    var body: some View {

            ZStack {
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.41).offset(y: referenceDimension*0.19)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.4).rotationEffect(.degrees(45)).offset(x: referenceDimension*0.15, y: -referenceDimension*0.15)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.4).rotationEffect(.degrees(-45)).offset(x: -referenceDimension*0.15, y: -referenceDimension*0.15)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.18, height: referenceDimension*0.18).offset(x: -referenceDimension*0.3, y: -referenceDimension*0.3)
                Rectangle().foregroundColor(theme.primaryTile)
                    .frame(width: referenceDimension*0.18, height: referenceDimension*0.18).offset(x: referenceDimension*0.3, y: -referenceDimension*0.3)
            }
        
    }
}

struct Crossroad6_Previews: PreviewProvider {
    static var previews: some View {
        Crossroad6(referenceDimension: 150.0, theme: BasicTheme())
    }
}
