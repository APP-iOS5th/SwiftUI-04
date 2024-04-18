//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Hello World, how are you?")
                .font(.largeTitle)
                .border(Color.black)
//                .frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: 100, alignment: .center)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
