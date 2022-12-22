//
//  TileFrame.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct TileFrame: View {
    var theme: Theme
    
    var body: some View {
        VStack{
            HStack{
                CrossroadFrame(theme: theme, crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward], directionAmount: 3)
                Spacer()
                    .frame(width: 30.0)
                CrossroadFrame(theme: theme, crossroadId: 2, directions: [Direction.left, Direction.right], directionAmount: 2)
            }
            Spacer()
                .frame(height: 30.0)
            HStack{
                CrossroadFrame(theme: theme, crossroadId: 3, directions: [Direction.left, Direction.forward], directionAmount: 2)
                Spacer()
                    .frame(width: 30.0)
                CrossroadFrame(theme: theme, crossroadId: 4, directions: [Direction.forward, Direction.right], directionAmount: 2)
               
            }
            Spacer()
                .frame(height: 30.0)
            HStack{
                CrossroadFrame(theme: theme, crossroadId: 5, directions: [Direction.left, Direction.right], directionAmount: 4)
                Spacer()
                    .frame(width: 30.0)
                CrossroadFrame(theme: theme, crossroadId: 6, directions: [Direction.left, Direction.right], directionAmount: 2)
                
            }
        }
    }
}

struct TileFrame_Previews: PreviewProvider {
    static var previews: some View {
        TileFrame(theme: Theme.light)
    }
}
