//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("View One")
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappear triggered")
            })
    }
}

#Preview {
    FirstTabView()
}
