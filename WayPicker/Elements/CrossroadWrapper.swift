//
//  CrossroadWrapper.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 29.12.2022.
//

import SwiftUI

struct CrossroadWrapper: View {
    @AppStorage("Theme") private var selectedTheme = ThemeName.basic.rawValue
    
    var crossroadId: Int
    var directions: [Direction]
    var directionAmount: Int
    var staticTheme: ThemeName? = nil
    var theme: Theme = ThemeManager.shared.getTheme()
    var isSketchesTheme: Bool = false
    
    init(crossroadId: Int, directions: [Direction], staticTheme: ThemeName?) {
        self.crossroadId = crossroadId
        self.directions = directions
        self.staticTheme = staticTheme
        directionAmount = directions.count
        
        if (staticTheme != nil) {
            theme = getStaticTheme(staticTheme: staticTheme!)
        }
        
        isSketchesTheme = staticTheme == ThemeName.sketches || (selectedTheme == ThemeName.sketches.rawValue && staticTheme == nil)
    }
    
    func getStaticTheme(staticTheme: ThemeName) -> Theme {
        switch(staticTheme) {
        case ThemeName.sketches:
            return SketchesTheme()
            
        case ThemeName.roadsigns:
            return RoadsignsTheme()
            
        default:
            return BasicTheme()
            
        }
    }
    
    var body: some View {
        if (isSketchesTheme) {
            Image("sketch" + String(crossroadId))
                .frame(width: 150.0, height: 150.0)
        } else {
            CrossroadFrame(crossroadId: crossroadId, directions: directions, theme: theme)
        }}
}

struct CrossroadWrapper_Previews: PreviewProvider {
    static var previews: some View {
        CrossroadWrapper(crossroadId: 4, directions: [Direction.left, Direction.forward], staticTheme: ThemeName.sketches)
    }
}
