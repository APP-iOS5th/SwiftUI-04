//
//  ContentView.swift
//  ObservableDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: timerData.resetCount) {
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: SecondView(timerData: timerData)) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
    }
    
//    func resetCount() {
//        timerData.resetCount()
//    }
}

#Preview {
    ContentView()
}
