//
//  InfoView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct InfoView: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        VStack {
            InfoText()
                .padding([.leading, .trailing], 20.0).scrollIndicators(.visible)
            NavigationLink (destination: IntroView()){ButtonDone()}
        }.padding(.top, 20.0).navigationBarBackButtonHidden(true).toolbar {Menu()}.frame(maxWidth: .infinity).background(theme.primary)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
