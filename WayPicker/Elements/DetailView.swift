//
//  DetailView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI
import StoreKit

struct DetailView: View {
    @Environment(\.requestReview) var requestReview
    @AppStorage("AppUsedCount") private var appUsedCount: Int = 0
    
    var crossroadId: Int
    var directions: [Direction]
    var directionAmount: Int
    var selectedDirection: Direction
    var turnNumber: String = ["first", "second"].randomElement()!
    let theme = ThemeManager.shared.getTheme()

    init(crossroadId: Int, directions: [Direction]) {
        self.crossroadId = crossroadId
        self.directions = directions
        directionAmount = directions.count
        let randomDirection = directions.randomElement()
        selectedDirection = randomDirection ?? Direction.left
    }
    
    var body: some View {
        VStack {
            ZStack{
                CrossroadWrapper(crossroadId: crossroadId, directions: directions, staticTheme: nil)
                DirectionArrowSmall(crossroadId: crossroadId, direction: selectedDirection, turnNumber: turnNumber)
            }.padding(.top, 50.0)
            Spacer()
            DirectionArrow(direction: selectedDirection)
            Spacer()
                .frame(height: 100.0)
            getDirectionDesc(selectedDirection: selectedDirection, directionAmount: crossroadId == 5 ? 4 : directionAmount, turnNumber: turnNumber).multilineTextAlignment(.center).padding(.horizontal, 20.0)
            Spacer()
            NavigationLink (destination: IntroView()){ButtonDone()}
        }.navigationBarBackButtonHidden(true).toolbar {Menu()}.frame(maxWidth: .infinity).background(theme.primary).onAppear{
                let updatedAppUsedCount: Int = appUsedCount + 1
                UserDefaults.standard.set(updatedAppUsedCount, forKey: "AppUsedCount")
            
            if (appUsedCount > 5)
            {
                Task {
                    try await Task.sleep(
                                    until: .now + .seconds(1),
                                    tolerance: .seconds(0.5),
                                    clock: .suspending
                                )
                                
                                requestReview()
                }
            }
            
        }
    }
    
    func getDirectionDesc(selectedDirection: Direction, directionAmount: Int, turnNumber: String) -> Text {
    
        var description: String = "go " + selectedDirection.rawValue
        
        if (selectedDirection == Direction.forward) {
        }
        
        if (directionAmount > 3) {
            description = "take the " + turnNumber + " turn on the " + selectedDirection.rawValue
        }
        
        return Text(description).font(.custom("Quicksand", size: 40)).fontWeight(.bold).foregroundColor(theme.secondary)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward])
    }
}
