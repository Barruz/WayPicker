//
//  ThemeView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ThemeView: View {
    @AppStorage("Theme") private var selectedTheme = ThemeName.basic.rawValue
    let theme = ThemeManager.shared.getTheme()
    

    var body: some View {
        VStack {
            Spacer()
            Button {
                applySelectedTheme(selectedThemeName: ThemeName.basic.rawValue)
            } label: {
                ZStack{
                    CrossroadWrapper( crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward], staticTheme: ThemeName.basic)
                        .padding(.bottom, 10.0)
                    Checkmark().offset(x: 70, y: -70).opacity(ThemeName.basic.rawValue == selectedTheme ? 1 : 0)
                }}
            Button {
                applySelectedTheme(selectedThemeName: ThemeName.roadsigns.rawValue)
            } label: {
                ZStack{
                    CrossroadWrapper( crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward], staticTheme: ThemeName.roadsigns).padding(.bottom, 10.0)
                    Checkmark().offset(x: 70, y: -70).opacity(ThemeName.roadsigns.rawValue == selectedTheme ? 1 : 0)
                }}
            Button {
                applySelectedTheme(selectedThemeName: ThemeName.sketches.rawValue)
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(theme.primary)
                        .border(.gray)
                        .frame(width: 150.0, height: 150.0)
                    CrossroadWrapper( crossroadId: 1, directions: [Direction.left, Direction.right, Direction.forward], staticTheme: ThemeName.sketches)
                    Rectangle()
                        .stroke(theme.primary, lineWidth: 17.0)
                        .frame(width: 166.0, height: 166.0)
                    Checkmark().offset(x: 70, y: -70).opacity(ThemeName.sketches.rawValue == selectedTheme ? 1 : 0)
                }}
            Spacer()
            NavigationLink (destination: IntroView()){ButtonDone()}
        } .navigationBarBackButtonHidden(true).toolbar {Menu()}.frame(maxWidth: .infinity).background(theme.primary)
    }
    
    func applySelectedTheme(selectedThemeName: String) {
        WayPicker.applySelectedTheme(themeName: selectedThemeName)
    }

}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
