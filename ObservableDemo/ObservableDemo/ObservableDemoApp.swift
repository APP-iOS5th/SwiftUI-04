//
//  ObservableDemoApp.swift
//  ObservableDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

@main
struct ObservableDemoApp: App {
    @StateObject var timerData: TimerData = TimerData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(timerData)
        }
    }
}
