//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//

import SwiftUI

class DemoData: ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
        updateData()
    }
    
    func updateData() {
        
    }
}

struct ContentView: View {
    @StateObject var demoData: DemoData = DemoData()
    
    var body: some View {
        VStack {
            Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
        }
    }
}


#Preview {
    ContentView()
}
