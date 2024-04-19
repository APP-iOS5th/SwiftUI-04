//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

struct FirstTabView: View {
    @State var title = "View One"
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappear triggered")
                title = "View One Again"
            })
            .task(priority: .background) {
                print("task triggered")
                title = await changeTitle()
            }
    }
    
    func changeTitle() async -> String {
        sleep(5)
        return "Async task complete"
    }
}

#Preview {
    FirstTabView()
}
