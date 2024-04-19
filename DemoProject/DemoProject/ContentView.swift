//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiEnabled = true
    @State private var userName = ""
    var body: some View {
        VStack {
            TextField("Enter user name", text: $userName)
            Text(userName)
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
                .font(.largeTitle)

            WifiImageView(wifiEnabled2: $wifiEnabled)
        }
    }
}

struct WifiImageView: View {
    @Binding var wifiEnabled2: Bool
    var body: some View {
        Toggle(isOn: $wifiEnabled2) {
            Text("Enable Wi-Fi")
        }
    }
    
}

#Preview {
    ContentView()
}
