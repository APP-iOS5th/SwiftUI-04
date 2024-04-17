//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    let carStack = HStack {
        Text("Car Image")
        Image(systemName: "car.fill")
    }
    
    var body: some View {
        VStack {
            Text("Main Title")
                .font(.largeTitle)
            carStack
        }
    }
}

#Preview {
    ContentView()
}
