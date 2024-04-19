//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

class DemoData: ObservableObject {
    @Published var userCount = 0
    
    func increment() {
        userCount += 1
    }
    
}

struct ContentView: View {
    @StateObject var demoData: DemoData = DemoData()
    
    var body: some View {
        VStack {
            Text("you are user number \(demoData.userCount)")
            
            Button(action: {
                demoData.increment()
            }) {
                Text("Increment")
                    .font(.largeTitle)
            }
        }
    }
}


#Preview {
    ContentView()
}
