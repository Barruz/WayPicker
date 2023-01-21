//
//  ThemeList.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 25.12.2022.
//

import SwiftUI

final class BasicTheme: Theme {
    var primary: Color = Color("BasicPrimary")
    var secondary: Color = Color("BasicSecondary")
    var accent: Color = Color("BasicAccent")
    var primaryButton = Color("BasicPrimaryButton")
    var secondaryButton = Color("BasicSecondaryButton")
    var primaryTile = Color("BasicPrimaryTile")
    var secondaryTile = Color("BasicSecondaryTile")
    var borderTile = Color("BasicSecondaryTile")
    var logo = Color("BasicLogo")
    var locationPointer: Color = Color("BasicLocationPointer")
    var text: Color = Color("BasicSecondary")
    var checkmark: Color = Color("BasicSecondary")
}

final class RoadsignsTheme: Theme {
    var primary: Color = Color("RoadsignsPrimary")
    var secondary: Color = Color("RoadsignsSecondary")
    var accent: Color = Color("RoadsignsAccent")
    var primaryButton = Color("RoadsignsPrimaryButton")
    var secondaryButton = Color("RoadsignsSecondaryButton")
    var primaryTile = Color("RoadsignsPrimaryTile")
    var secondaryTile = Color("RoadsignsSecondaryTile")
    var borderTile = Color("RoadsignsSecondary")
    var logo = Color("RoadsignsLogo")
    var locationPointer: Color = Color("RoadsignsLocationPointer")
    var text: Color = Color("RoadsignsPrimaryButton")
    var checkmark: Color = Color("RoadsignsAccent")
}

final class SketchesTheme: Theme {
    var primary: Color = Color("SketchesPrimary")
    var secondary: Color = Color("SketchesSecondary")
    var accent: Color = Color("SketchesAccent")
    var primaryButton = Color("SketchesPrimaryButton")
    var secondaryButton = Color("SketchesSecondaryButton")
    var primaryTile = Color("SketchesPrimary")
    var secondaryTile = Color("SketchesSecondaryTile")
    var borderTile = Color("SketchesSecondary")
    var logo = Color("SketchesLogo")
    var locationPointer: Color = Color("SketchesLocationPointer")
    var text: Color = Color("SketchesSecondary")
    var checkmark: Color = Color("SketchesSecondary")
}
