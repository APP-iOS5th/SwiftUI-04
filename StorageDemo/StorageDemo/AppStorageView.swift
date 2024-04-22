//
//  AppStorageView.swift
//  StorageDemo
//
//  Created by Jungman Bae on 4/22/24.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("mytext") private var editorText: String = "Sample Text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(38)
            .font(.largeTitle)
    }
}

#Preview {
    AppStorageView()
}
