//
//  LocationPointer.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct LocationPointer: View {
    var body: some View {
        ZStack{
            GeometryReader{ backgroundCircle in
                Circle().fill(Color("Gray"))
                Circle()
                    .fill(Color("Beige")).frame(width: backgroundCircle.size.width*0.8)
                    .padding(.all, backgroundCircle.size.width*0.1)
                Circle().fill(Color("Gray"))
                    .frame(width: backgroundCircle.size.width*0.6)
                    .padding(.all, backgroundCircle.size.width*0.2)
            }
            
        }
    }
}

struct LocationPointer_Previews: PreviewProvider {
    static var previews: some View {
        LocationPointer()
    }
}
