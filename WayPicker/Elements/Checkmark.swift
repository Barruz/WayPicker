//
//  Checkmark.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct Checkmark: View {
    var body: some View {
        ZStack{
            Circle().fill((Color("Chocolate")))
                .frame(width: 55.0, height: 55.0)
            Text("✓").font(.custom("Quicksand",                   size: 30))
                .foregroundColor(Color("Beige"))
        }
        
    }
    
}

struct Checkmark_Previews: PreviewProvider {
    static var previews: some View {
        Checkmark()
    }
}
