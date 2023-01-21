//
//  Helpers.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
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
    var directionAmount: Int
}
