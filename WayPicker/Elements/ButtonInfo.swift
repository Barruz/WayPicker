//
//  ButtonInfo.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ButtonInfo: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color("Gray"))
                .frame(width: 60.0, height: 60.0)
            Text("i")
                .font(.custom("Pacifico",
                              size: 38))
                .foregroundColor(Color("Beige"))
            .padding(.bottom, 5.0)}
    }
}

struct ButtonInfo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInfo()
    }
}
