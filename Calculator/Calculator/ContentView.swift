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
                            buttonTapped(buttonChar)
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
    
    func buttonTapped(_ button: String) {
        if(inputValue == "0") {
            inputValue = ""
        }
        
        switch button {
        case "=":
            calculate()
        case "C":
            inputValue = "0"
        case "+","-","*","/":
            if ["+", "-", "*", "/"].contains(inputValue.suffix(1)) {
                inputValue.removeLast()
            }
           inputValue += button
        default:
            inputValue += button
        }
    }
    
    func calculate() {
        let expression = NSExpression(format: inputValue)
        if let value = expression.expressionValue(with: nil, context: nil) as? Double {
            inputValue = String(value)
        } else {
            inputValue = "Invalid input"
        }
    }
}

#Preview {
    ContentView()
}
