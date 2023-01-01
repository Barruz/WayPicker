//
//  IntroView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 16.12.2022.
//

import SwiftUI

struct IntroView: View {
    let theme = ThemeManager.shared.getTheme()

    
    var body: some View {
        VStack {
            Text("Select your crossroad").font(.custom("Quicksand",                   size: 22))
                .fontWeight(.semibold)
                .foregroundColor(theme.text)
                .padding(.top, 20.0)
            Spacer()
           TileFrame()
            Spacer()
            NavigationLink(destination: DetailUnknownView()) {
                Text("Can't find your crossroad?").font(.custom("Quicksand",size: 18)).fontWeight(.semibold).foregroundColor(theme.text).overlay(
                    Rectangle()
                        .foregroundColor(theme.text).frame(height: 1).offset(y: 4)
                    , alignment: .bottom)
            }
        }.padding(.top, 20.0).background(theme.primary).navigationBarBackButtonHidden(true).toolbar {Menu()}
    }

}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
