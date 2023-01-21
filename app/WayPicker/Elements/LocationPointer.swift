//
//  LocationPointer.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct LocationPointer: View {
    var theme: Theme
    
    var body: some View {
            ZStack{
                GeometryReader{
                    backgroundCircle in
                    Circle().fill(theme.locationPointer)
                    Circle()
                        .fill(theme.primaryTile).frame(width: backgroundCircle.size.width*0.8)
                        .padding(.all, backgroundCircle.size.width*0.1)
                    Circle().fill(theme.locationPointer)
                        .frame(width: backgroundCircle.size.width*0.6)
                        .padding(.all, backgroundCircle.size.width*0.2)
             
                    }

                }
            }
    
}
    


struct LocationPointer_Previews: PreviewProvider {
    static var previews: some View {
        LocationPointer(theme: BasicTheme())
    }
}
