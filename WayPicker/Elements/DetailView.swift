//
//  DetailView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct DetailView: View {
    var crossroadId: Int
    var directions: [Direction]
    var directionAmount: Int
    var selectedDirection: Direction
    let theme = ThemeManager.shared.getTheme()

    
    init(crossroadId: Int, directions: [Direction]) {
        self.crossroadId = crossroadId
        self.directions = directions
        directionAmount = directions.count
        let randomDirection = directions.randomElement()
        selectedDirection = randomDirection ?? Direction.left
        }
    
    func getTurnNumber(directionAmount: Int) -> String {
        let turnNumber: Int = Int.random(in: 1...directionAmount/2)
        if (turnNumber == 1) {
            return "first"
        } else if (turnNumber == 2) {
            return "second"
        } else {
            return String(turnNumber)
        }
    }
    
    func getDirectionDesc(selectedDirection: Direction, directionAmount: Int) -> Text {
        
        var textsize: CGFloat = 60
        var description: String = "go " + selectedDirection.rawValue
        
        if (selectedDirection == Direction.forward) {
            textsize = 40
        }
        
        if (directionAmount > 3) {
            textsize = 40
            let turnNumber = getTurnNumber(directionAmount: directionAmount)
            description = "take the " + turnNumber + " turn on the " + selectedDirection.rawValue
        }
        
        return Text(description).font(.custom("Quicksand", size: textsize)).fontWeight(.bold).foregroundColor(theme.secondary)
    }
    
    var body: some View {
        VStack {
            ZStack{
                CrossroadWrapper(crossroadId: crossroadId, directions: directions, staticTheme: nil)
                //DirectionArrowSmall()
            }.padding(.top, 40.0)
            Spacer()
            DirectionArrow(direction: selectedDirection)
            Spacer()
                .frame(height: 55.0)
                getDirectionDesc(selectedDirection: selectedDirection, directionAmount: directionAmount).multilineTextAlignment(.center)
            Spacer()
            NavigationLink (destination: IntroView()){ButtonDone()}
        }.navigationBarBackButtonHidden(true).toolbar {Menu()}.frame(maxWidth: .infinity).background(theme.primary)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward])
    }
}
