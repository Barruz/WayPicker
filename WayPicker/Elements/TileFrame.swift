//
//  TileFrame.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct TileFrame: View {
    
    var body: some View {
        VStack{
            HStack{
                CrossroadButton(crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward], directionAmount: 3)
                Spacer()
                    .frame(width: 30.0)
                CrossroadButton(crossroadId: 2, directions: [Direction.left, Direction.right], directionAmount: 2)
            }
            Spacer()
                .frame(height: 30.0)
            HStack{
                CrossroadButton(crossroadId: 3, directions: [Direction.left, Direction.forward], directionAmount: 2)
                Spacer()
                    .frame(width: 30.0)
                CrossroadButton(crossroadId: 4, directions: [Direction.forward, Direction.right], directionAmount: 2)
               
            }
            Spacer()
                .frame(height: 30.0)
            HStack{
                CrossroadButton(crossroadId: 5, directions: [Direction.left, Direction.right], directionAmount: 4)
                Spacer()
                    .frame(width: 30.0)
                CrossroadButton( crossroadId: 6, directions: [Direction.left, Direction.right], directionAmount: 2)
                
            }
        }
    }
}

struct TileFrame_Previews: PreviewProvider {
    static var previews: some View {
        TileFrame()
    }
}
