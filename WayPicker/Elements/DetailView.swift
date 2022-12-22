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
    var theme: Theme = Theme.light
    var selectedDirection: Direction = Direction.left
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(crossroadId: 5, directions: [Direction.left, Direction.right], directionAmount: 4)
    }
}
