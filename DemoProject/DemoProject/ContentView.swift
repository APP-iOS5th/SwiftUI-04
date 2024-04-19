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
            Button(action: {
                doSomething()
            }) {
                Text("Do something")
            }
        }
    }
    
    func doSomething() {
        print("Start \(Date())")
        Task {
            await takesTooLong()
        }
        print("End \(Date())")
    }
    
    func takesTooLong() async {
        sleep(5)
        print("Async task completed at \(Date())")
    }
}


#Preview {
    ContentView()
}
