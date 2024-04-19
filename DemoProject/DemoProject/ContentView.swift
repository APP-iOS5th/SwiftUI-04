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
            async let result = takesTooLong()
            print("Date result: \(await result)")
        }
        print("End \(Date())")
    }
    
    func takesTooLong() async -> Date {
        sleep(5)
        print("Async task completed at \(Date())")
        return Date()
    }
}


#Preview {
    ContentView()
}
