//
//  Theme.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 25.12.2022.
//

import Foundation
import SwiftUI

protocol Theme {
    var primary: Color { set get }
    var secondary: Color { set get }
    var accent: Color { set get }
    var primaryButton: Color { set get }
    var secondaryButton: Color { set get }
    var primaryTile: Color { set get }
    var secondaryTile: Color { set get }
    var borderTile: Color { set get }
    var logo: Color { set get }
    var locationPointer: Color { set get }
    var text: Color { set get }
    var checkmark: Color { set get }
}

