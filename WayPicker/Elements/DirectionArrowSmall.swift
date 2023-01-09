//
//  DirectionArrowSmall.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 01.01.2023.
//

import SwiftUI

struct DirectionArrowSmall: View {
    @AppStorage("Theme") private var selectedThemeName: String = ThemeName.basic.rawValue
    var crossroadId: Int
    var direction: Direction
    var turnNumber: String
    let theme = ThemeManager.shared.getTheme()

    var body: some View {
        ZStack{
            Image(getArrow(crossroadId: crossroadId, direction: direction, turnNumber: turnNumber, themeName: selectedThemeName))
                .renderingMode(.template)
                .foregroundColor( theme.secondaryTile)
            if (selectedThemeName != ThemeName.sketches.rawValue) {
                LocationPointer(theme: theme).frame(width: 150*0.18, height: 150*0.18).offset(y: 150*0.28)
            }}}
    
    func getArrow(crossroadId: Int, direction: Direction, turnNumber: String, themeName: String) -> String {
        var arrowDirection: String = "left"
        var arrowSecondDirection: String = "-"
        
        if (direction == Direction.right) {
            arrowDirection = "right"
        }
        
        if (themeName == ThemeName.sketches.rawValue) {
            var arrowDescription = "arrow-sketches-" + String(crossroadId)
            
            if (direction == Direction.forward) {
               arrowDescription = arrowDescription + "-straight"
            } else if (crossroadId == 5 && turnNumber == "second") {
                arrowDescription = arrowDescription + "-" + arrowDirection + "-up"
            } else {
                arrowDescription = arrowDescription + "-" + arrowDirection
            }
            return arrowDescription
        } else {
            var arrowLength: String = "short"

            if (crossroadId == 2) {
                arrowLength = "long"
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
        
        
    }
}

struct DirectionArrowSmall_Previews: PreviewProvider {
    static var previews: some View {
        DirectionArrowSmall(crossroadId: 1, direction: Direction.left, turnNumber: "first")
    }
}
