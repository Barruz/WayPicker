//
//  ThemeManager.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 25.12.2022.
//

class ThemeManager {
    static let shared = ThemeManager()
    private var theme: Theme = BasicTheme()
    public func applyTheme(theme: Theme) {
        self.theme = theme
    }
    
    public func getTheme() -> Theme {
        return self.theme
    }
}
