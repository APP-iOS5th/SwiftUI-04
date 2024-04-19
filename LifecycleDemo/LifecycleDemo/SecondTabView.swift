//
//  SecondTabView.swift
//  LifecycleDemo
//
//  Created by Jungman Bae on 4/19/24.
//

import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text) {
                print("onChange triggered \($0):\($1)")
            }
        
    }
}

#Preview {
    SecondTabView()
}
