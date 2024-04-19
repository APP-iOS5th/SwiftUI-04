//
//  LifecycleDemoApp.swift
//  LifecycleDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

@main
struct LifecycleDemoApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { (oldScenePhase, newScenePhase) in
            switch newScenePhase {
            case .active:
                print("Active \(oldScenePhase)")
            case .inactive:
                print("Inactive \(oldScenePhase)")
            case .background:
                print("Background")
            default:
                print("Unknown scenephase")
            }
        }
    }
}
