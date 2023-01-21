//
//  TestView.swift
//  WayPicker
//
//  Created by Barbora Růžičková on 23.12.2022.
//

import SwiftUI

struct CounterView: View {
    @State private var count: Int
    
    init(count: Int) {
        self.count = count
    }
    
    var body: some View {
            Text("Counter: \(count)")
    }
}

struct TextView: View {
    var text: String
    var text2: String
    var text3: String
    
    init(text: String, text3: String) {
        self.text = text
        self.text3 = text3
        text2 = text + " lol"
    }
    
    var body: some View {
        Text(text)
        Text(text2)
        Text(text3)
    }
}

struct TestView: View {
    
    var body: some View {
        VStack{
            CounterView(count: 6)
            TextView(text: "heya", text3: "cheers")
        }


    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
