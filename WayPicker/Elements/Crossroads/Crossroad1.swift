//
//  Crossroad1.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 17.12.2022.
//

import SwiftUI

struct Crossroad1: View {
    var referenceDimension: CGFloat
    var theme: Theme
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color(getColor(theme: theme)))
                .frame(width:  referenceDimension*0.25, height: referenceDimension*0.8)
            Rectangle().foregroundColor(Color(getColor(theme: theme)))
                .frame(width: referenceDimension*0.8, height: referenceDimension*0.25)
        }
    }
}

struct Crossroad1_Previews: PreviewProvider {
    static var previews: some View {
        Crossroad1(referenceDimension: 150.0, theme: Theme.dark)
    }
}
