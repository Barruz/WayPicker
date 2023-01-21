//
//  ContentView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Theme") private var selectedThemeName: String = ThemeName.basic.rawValue
    let theme = ThemeManager.shared.getTheme()
    
    init() {
        self.applySelectedTheme()
        }
    
    var body: some View {        
        NavigationStack{
            IntroView()
        }
    }
    
    func applySelectedTheme() {
        WayPicker.applySelectedTheme(themeName: selectedThemeName)
    }

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
