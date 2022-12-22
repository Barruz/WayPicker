//
//  ButtonDone.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ButtonDone: View {
    var body: some View {
        ZStack{
                    Rectangle()
                        .fill(Color("Gray"))
                        .frame(width: 350.0, height: 100.0)
                    Text("DONE").font(.custom("Quicksand",                   size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Beige"))
                        .kerning(2)
                }
    }
}

struct ButtonDone_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDone()
    }
}
