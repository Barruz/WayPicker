//
//  Crossroad3.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 18.12.2022.
//

import SwiftUI

struct Crossroad3: View {
    var referenceDimension: CGFloat
    var theme: Theme
    
        var body: some View {
            ZStack {
                Rectangle().foregroundColor(Color(getColor(theme: theme)))
                    .frame(width:  referenceDimension*0.25, height: referenceDimension*0.8)
                Rectangle().foregroundColor(Color(getColor(theme: theme)))
                    .frame(width: referenceDimension*0.4, height: referenceDimension*0.25).offset(x: -referenceDimension*0.20)
            }
        }
    
}

struct Crossroad3_Previews: PreviewProvider {
    static var previews: some View {
        Crossroad3(referenceDimension: 150.0, theme: Theme.dark)
    }
}
