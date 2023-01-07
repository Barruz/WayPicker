//
//  DirectionArrowSmall.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 01.01.2023.
//

import SwiftUI

struct DirectionArrowSmall: View {
    var crossroadId: Int
    var direction: Direction
    var turnNumber: String
    let theme = ThemeManager.shared.getTheme()
    
    func getArrow(crossroadId: Int, direction: Direction) -> String {
        var arrowLength: String = "short"
        var arrowDirection: String = "left"
        var arrowSecondDirection: String = "-"
        
        if (crossroadId == 2) {
            arrowLength = "long"
        }
        
        if (direction == Direction.right) {
            arrowDirection = "right"
        }
        
        if (direction == Direction.forward) {
            arrowDirection = "straight"
        }
        
        if (crossroadId == 6) {
            arrowSecondDirection = "-up-"
        }
        
        if (crossroadId == 5) {
            if (turnNumber == "first") {
                arrowSecondDirection = "-down-"} else {arrowSecondDirection = "-up-"}
        }
        
        return "arrow-" + arrowLength + arrowSecondDirection + arrowDirection
    }

    
    var body: some View {
            Image(getArrow(crossroadId: crossroadId, direction: direction))
                .renderingMode(.template)
                .foregroundColor(theme.secondaryTile)
    }
}

struct DirectionArrowSmall_Previews: PreviewProvider {
    static var previews: some View {
        DirectionArrowSmall(crossroadId: 1, direction: Direction.left, turnNumber: "first")
    }
}
