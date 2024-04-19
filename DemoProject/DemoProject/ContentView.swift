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
        let task = Task(priority: .background) {
            let result = await takesTooLong()
            print("Date result: \(result)")
        }
        print(task.isCancelled)
        if !task.isCancelled {
            task.cancel()
        }
        print(task.isCancelled)
        print("End \(Date())")
    }
    
    func takesTooLong() async -> Date {
        print("tasksTooLong start \(Task.currentPriority)")
        sleep(5)
        print("tasksTooLong ")
        return Date()
    }
}


#Preview {
    ContentView()
}
