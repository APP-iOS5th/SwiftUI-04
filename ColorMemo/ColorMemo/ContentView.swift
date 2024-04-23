//
//  ContentView.swift
//  ColorMemo
//
//  Created by Jungman Bae on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    
    var body: some View {
        NavigationStack {
            List {
                // TODO: list item
            }
            .listStyle(.plain)
            .navigationTitle("mememo")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("추가") {
                        // TODO: 메모 추가 액션
                        showSheet = true
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                MemoAddView(showSheet: $showSheet)
            }
        }
    }
}

struct MemoAddView: View {
    @Binding var showSheet: Bool
    @State var memoColor: Color = .blue
    @State var memoText: String = ""
    
    let colors: [Color] = [.blue, .cyan, .purple, .yellow, .indigo]

    var body: some View {
        VStack {
            HStack {
                Button("취소") {
                    showSheet = false
                }
                Spacer()
                Button("완료") {
                    // TODO: add Memo
                    showSheet = false
                }
                .disabled(memoText.isEmpty)
            }
            .padding()
            
            HStack {
                ForEach(colors, id: \.self) { color in
                    Button {
                        memoColor = color
                    } label: {
                        HStack {
                            Spacer()
                            // 컬러 선택시
                            if color == memoColor {
                                Image(systemName: "checkmark.circle")
                            }
                            Spacer()
                        }
                        .frame(height: 50)
                        .background(color)
                        .foregroundStyle(.white)
                        .shadow(radius: color == memoColor ? 8 : 0)
                    }
                }
            }
            .padding()
            
            Divider()
                .padding()
            
            VStack {
                TextField("메모를 입력하세요.", text: $memoText, axis: .vertical)
                    .padding()
                    .foregroundStyle(.white)
                    .background(memoColor)
                    .shadow(radius: 3)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
