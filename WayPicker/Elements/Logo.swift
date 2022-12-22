//
//  Logo.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        HStack{
            Image("compass")
                .renderingMode(.template)
                .resizable()
                .foregroundColor(Color("Chocolate"))
                .frame(width: 60.0, height: 60.0)
            
            Text("WayPicker")
                .font(.custom("Pacifico",
                              size: 22))
            .foregroundColor(Color("Chocolate"))}
    
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
