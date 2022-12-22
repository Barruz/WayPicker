//
//  DetailUnknownView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct DetailUnknownView: View {
    var selectedDirection: Direction = [Direction.left, Direction.right].randomElement()!

    var body: some View {
            VStack {
                Menu()
                Text("Can’t find your your crossroad?").font(.custom("Quicksand",size: 22)).fontWeight(.semibold).foregroundColor(Color("Chocolate")).padding(.all, 30.0)
                Text("So sorry to hear that! Please take the first turn on the").font(.custom("Quicksand",size: 22)).fontWeight(.semibold).foregroundColor(Color("Chocolate")).multilineTextAlignment(.center).padding(.horizontal, 30.0).padding(.bottom, 70.0)
                DirectionArrow(direction: selectedDirection)
                Spacer()
                    .frame(height: 55.0)
                Text(selectedDirection.rawValue).font(.custom("Quicksand",size: 60)).fontWeight(.bold).foregroundColor(Color("Chocolate"))
                Spacer()
                NavigationLink (destination: IntroView()) {
                    ButtonDone()
                }
            }.background(Color("Beige")).navigationBarBackButtonHidden(true)
        }
}

struct DetailUnknownView_Previews: PreviewProvider {
    static var previews: some View {
        DetailUnknownView()
    }
}
