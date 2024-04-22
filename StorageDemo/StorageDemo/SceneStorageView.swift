//
//  SceneStorageView.swift
//  StorageDemo
//
//  Created by Jungman Bae on 4/22/24.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("mytext") private var editorText: String = ""
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(38)
            .font(.largeTitle)
    }
}

#Preview {
    SceneStorageView()
}
