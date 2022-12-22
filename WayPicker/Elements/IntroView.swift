//
//  IntroView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 16.12.2022.
//

import SwiftUI

struct IntroView: View {
    var theme: Theme = Theme.light
    
    var body: some View {
        VStack {
            Menu()
            Text("Select your crossroad").font(.custom("Quicksand",                   size: 22))
                .fontWeight(.semibold)
                .foregroundColor(Color("Chocolate"))
                .padding(.top, 20.0)
            Spacer()
           TileFrame(theme: theme)
            Spacer()
            NavigationLink(destination: DetailUnknownView()) {
                Text("Can't find your crossroad?").font(.custom("Quicksand",size: 18)).foregroundColor(Color("Chocolate")).overlay(
                    Rectangle()
                        .foregroundColor(Color("Chocolate")).frame(height: 1).offset(y: 4)
                    , alignment: .bottom)
            }
        }.background(Color("Beige")).navigationBarBackButtonHidden(true)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
