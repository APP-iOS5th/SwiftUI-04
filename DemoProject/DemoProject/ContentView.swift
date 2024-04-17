//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var fileopen: Bool = true
    var body: some View {
        var myString: String = "File closed"
        if(fileopen) {
            myString = "File open"
        }
        return VStack {
            HStack {
                Text(myString)
                    .padding()
                Text("Goodbye, world")
            }
        }
    }
}

#Preview {
    ContentView()
}
