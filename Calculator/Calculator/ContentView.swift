//
//  ContentView.swift
//  Calculator
//
//  Created by Jungman Bae on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue = "0"
    
    let buttons = [
        ["7", "8", "9", "/"],
        ["4", "5", "6", "*"],
        ["1", "2", "3", "-"],
        [".", "0", "C", "+"],
        ["="]
    ]
    
    var body: some View {
        VStack {
            Text(inputValue)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 48))
                .padding()
                .background(Color.gray.opacity(0.2))
            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { buttonChar in
                        Button(action: {
                            print(buttonChar)
                        }) {
                            Text(buttonChar)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.system(size: 48))
                                .foregroundStyle(buttonChar == "C" ? .red : .black)
                                .border(Color.gray, width: 1)
                        }
                    }
                }
            }

        }
    }
}

#Preview {
    ContentView()
}
