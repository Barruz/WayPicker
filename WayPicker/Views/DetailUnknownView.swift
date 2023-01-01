//
//  DetailUnknownView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct DetailUnknownView: View {
    let theme = ThemeManager.shared.getTheme()
    var selectedDirection: Direction = [Direction.left, Direction.right].randomElement()!

    var body: some View {
            VStack {
                Text("Can’t find your your crossroad?").font(.custom("Quicksand",size: 22)).fontWeight(.semibold).foregroundColor(theme.text).padding(.all, 30.0)
                Text("So sorry to hear that! Please take the first turn on the").font(.custom("Quicksand",size: 22)).fontWeight(.semibold).foregroundColor(theme.text).multilineTextAlignment(.center).padding(.horizontal, 30.0).padding(.bottom, 70.0)
                DirectionArrow(direction: selectedDirection)
                Spacer()
                    .frame(height: 55.0)
                Text(selectedDirection.rawValue).font(.custom("Quicksand",size: 60)).fontWeight(.bold).foregroundColor(theme.secondary)
                Spacer()
                NavigationLink (destination: IntroView()) {
                    ButtonDone()
                }
            }.padding(.top, 20.0).navigationBarBackButtonHidden(true).toolbar {Menu()}.frame(maxWidth: .infinity).background(theme.primary)
        }
}

struct DetailUnknownView_Previews: PreviewProvider {
    static var previews: some View {
        DetailUnknownView()
    }
}
