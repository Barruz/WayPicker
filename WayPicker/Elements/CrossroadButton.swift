//
//  CrossroadFrameButton.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 29.12.2022.
//

import SwiftUI

struct CrossroadButton: View {
    var crossroadId: Int
    var directions: [Direction]
    
    var body: some View {
        NavigationLink (destination: DetailView(crossroadId: crossroadId, directions: directions)){
            CrossroadWrapper(crossroadId: crossroadId, directions: directions, staticTheme: nil)
        }
    }
}

struct CrossroadButton_Previews: PreviewProvider {
    static var previews: some View {
        CrossroadButton(crossroadId: 2, directions:  [Direction.left, Direction.forward, Direction.right])
    }
}
