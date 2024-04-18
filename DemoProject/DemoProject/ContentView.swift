//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName:"goforward.10")
                Image(systemName:"goforward.15")
                Image(systemName:"goforward.30")
            }
            .padding()
            
            HStack(alignment: .top) {
                Text("Q1 Sales")
                    .font(.headline)
                Spacer()
                VStack(alignment: .leading) {
                    Text("January")
                    Text("February")
                    Text("March")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
