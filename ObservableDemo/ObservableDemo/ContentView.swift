//
//  ContentView.swift
//  ObservableDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var timerData: TimerData

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
                
                NavigationLink(destination: SecondView()) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
        .environmentObject(timerData)
    }
    
//    func resetCount() {
//        timerData.resetCount()
//    }
}

#Preview {
    ContentView()
        .environmentObject(TimerData())
}
