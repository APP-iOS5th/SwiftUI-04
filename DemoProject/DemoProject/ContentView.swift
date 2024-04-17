//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Text 1")
                .modifier(StandardTitle())
            Spacer()
            Text("Text 2")
                .modifier(StandardTitle())
        }
    }
}

#Preview {
    ContentView()
}
