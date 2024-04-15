//
//  ContentView.swift
//  OXQuiz
//
//  Created by Jungman Bae on 4/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var number1: Int = 4
    @State var number2: Int = 2
    @State var resultNumber: Int = 9
    
    @State var countCorrect: Int = 0
    @State var countWrong: Int = 0
    
    var body: some View {
        VStack {
            Text("다음 수식은 맞을까요?")
            Spacer()
            Text("\(number1) x \(number2) = \(resultNumber)")
            Spacer()
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "checkmark.diamond.fill")
                        Text("맞음")
                            .bold()
                    }
                    .foregroundStyle(.green)
                }
                Spacer()
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "xmark.diamond")
                        Text("틀림")
                            .bold()
                    }
                    .foregroundStyle(.red)
                }
                Spacer()
            }
            Spacer()
            HStack {
                Text("\(countCorrect)개 맞춤")
                Text("\(countWrong)개 틀림")
            }
            Spacer()
            Button("카운트 초기화") {
                countCorrect = 0
                countWrong = 0
            }
        }
        .font(.largeTitle)
        .padding()
    }
}

#Preview {
    ContentView()
}
