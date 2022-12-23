//
//  InfoText.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 22.12.2022.
//

import SwiftUI

struct InfoText: View {
    let theme = ThemeManager.shared.getTheme()
    var body: some View {
        ScrollView{
                Text("Welcome to WayPicker, the world’s only mapless navigation app.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(theme.secondary)
                    .padding(.vertical, 20.0)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineSpacing(5.0)
            Group {
                
                    Text("How does it work?").font(.custom("Quicksand",                   size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(theme.secondary)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 20.0)
                        
                Text("It’s easy! Whenever you’re faced with a crossroad and don’t know which way to go, fire up WayPicker. Tap the image that looks most like the real-life crossroad in front of you. The app will tell you where to go.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)}
            Group {
                Text("But how does the app know where I’m going?").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("It doesn’t. You’ll probably reach your destination eventually. Or not, but you’ll have explored your surroundings pretty closely by the time you decide to switch to an actual navigation app.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("WayPicker simply takes away the burden of making a decision. It offers an impartial answer to the question: Which way should I go?").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
            }
            Group {
                Text("This is stupid. Why on earth would anyone use this app?").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("Actually, WayPicker comes in handy more often than you would expect.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("Maybe you’re visiting a new city and aren’t sure which of its nooks and crannies are worth exploring.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("Or you’d like to challenge your friends on your way to the pub. Use WayPicker to get there! Last one in buys everyone a drink.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("Finally, dare we mention the family holiday, when you and your spouse have differing opinions on the quickest way to the beach?").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
            }
            Group {
                Text("And there’s of course that one situation when you are actually lost.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("There’s no reception, you forgot to download the map and night’s fast approaching. Why not shift the burden of picking the way to someone – anyone – else?").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("Enjoy!").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                Text("This application is meant for entertainment purposes only.").font(.custom("Quicksand",                   size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(theme.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20.0).lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

struct InfoText_Previews: PreviewProvider {
    static var previews: some View {
        InfoText()
    }
}
