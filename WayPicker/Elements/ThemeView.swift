//
//  ThemeView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ThemeView: View {
    var body: some View {
        VStack {
            Menu()
            Text("Pick your theme").font(.custom("Quicksand",                   size: 22))
                .fontWeight(.semibold)
                .foregroundColor(Color("Chocolate"))
                .padding(.top, 20.0)
            HStack{
                Spacer()
                VStack{
                    ZStack{
                        Image("tile-light-01")
                        Checkmark()
                            .padding(.leading, 130.0)
                            .padding(.top, -90.0)
                    }
                    Text("Light").font(.custom("Quicksand",        size: 22))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Chocolate"))
                    .padding(.top, 1.0)
                    
                }
                Spacer()
                VStack{
                    Image("tile-light-01")
                        .padding(.bottom, 12.0)
                    Text("Dark").font(.custom("Quicksand",                   size: 22))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Chocolate"))
                    
                }
                Spacer()
            }.padding(.top, 40.0)
            HStack{
                Spacer()
                VStack{
                    Image("tile-light-01")
                    Text("Road Signs").font(.custom("Quicksand",                   size: 22))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Chocolate"))
                        .padding(.top, 10.0)
                    
                }                    .padding(.leading, 5.0)
                Spacer()
                VStack{
                    Image("tile-light-01")
                    Text("Sketches").font(.custom("Quicksand",                   size: 22))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Chocolate"))
                        .padding(.top, 10.0)
                    
                }                    .padding(.trailing, -15.0)
                Spacer()
            }.padding(.top, 10.0)
            Spacer()
            NavigationLink (destination: IntroView()){ButtonDone()}
        }.background(Color("Beige")).navigationBarBackButtonHidden(true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
