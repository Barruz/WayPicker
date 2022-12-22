//
//  CrossroadFrame.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct CrossroadFrame: View {
    var theme: Theme
    var crossroadId: Int
    var directions: [Direction]
    var directionAmount: Int
    
    func selectCrossroad(id: Int, referenceDimension: CGFloat, theme: Theme) -> AnyView {
        var selectedCrossroad: AnyView
        
        switch (id) {
        case 1:
            selectedCrossroad = AnyView( Crossroad1(referenceDimension: referenceDimension, theme: theme))
        case 2:
            selectedCrossroad = AnyView(Crossroad2(referenceDimension: referenceDimension, theme: theme))
        case 3:
            selectedCrossroad = AnyView(Crossroad3(referenceDimension: referenceDimension, theme: theme))
        case 4:
            selectedCrossroad = AnyView(Crossroad4(referenceDimension: referenceDimension, theme: theme))
        case 5:
            selectedCrossroad = AnyView(Crossroad5(referenceDimension: referenceDimension, theme: theme))
        default:
            selectedCrossroad = AnyView(Crossroad6(referenceDimension: referenceDimension, theme: theme))
        }
        return selectedCrossroad
    }
    
    var body: some View {
        NavigationLink (destination: DetailView(crossroadId: crossroadId, directions: directions, directionAmount: directionAmount)){
            GeometryReader{ wrapper in
                ZStack{
                    RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Gray")).aspectRatio(1.0, contentMode: .fit)
                    RoundedRectangle(cornerRadius: 5).foregroundColor(Color("Beige"))
                        .frame(width: wrapper.size.width*0.93, height: wrapper.size.width*0.93)
                    Rectangle().foregroundColor(Color("Gray"))
                        .frame(width: wrapper.size.width*0.87, height: wrapper.size.width*0.87)
                    selectCrossroad(id: crossroadId, referenceDimension: wrapper.size.width, theme: theme)
                    LocationPointer().frame(width: wrapper.size.width*0.18, height: wrapper.size.width*0.18).offset(y: wrapper.size.width*0.28)
                }}.frame(width: 150.0, height: 150.0)
        }
        
    }
}

struct CrossroadFrame_Previews: PreviewProvider {
    static var previews: some View {
        CrossroadFrame(theme: Theme.light, crossroadId: 2, directions:  [Direction.left, Direction.forward, Direction.right], directionAmount: 3)
    }
}