//
//  Utils.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 25.12.2022.
//

import Foundation
import SwiftUI

enum Direction: String {
    case left = "left"
    case right = "right"
    case forward = "straight ahead"
}

struct Crossroad: Hashable {
    var crossroadId: Int
    var directions: [Direction]
}

enum ThemeName: String {
    case basic = "basic"
    case roadsigns = "roadsigns"
    case sketches = "sketches"
}


func applySelectedTheme(themeName: String) {
    var currentTheme: Theme
    
    switch(themeName) {
    case "roadsigns":
        currentTheme = RoadsignsTheme()
    case "sketches":
        currentTheme = SketchesTheme()
    default:
        currentTheme = BasicTheme()
    }
    
    UserDefaults.standard.set(themeName, forKey: "Theme")
    
    ThemeManager.shared.applyTheme(theme: currentTheme)
}
