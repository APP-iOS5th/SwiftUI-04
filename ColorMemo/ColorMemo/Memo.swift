//
//  Memo.swift
//  ColorMemo
//
//  Created by Jungman Bae on 4/23/24.
//

import Foundation
import SwiftUI

struct Memo: Identifiable {
    var id = UUID()
    var text: String
    var color: Color
    var created: Date
    
    var createdString: String {
        get {
            let dateFormatter: DateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            
            return dateFormatter.string(from: created)
        }
    }
}

class MemoStore: ObservableObject {
    @Published var memos: [Memo] =  []
    
    func addMemo(_ text: String, color: Color) {
        let memo = Memo(text: text, color: color, created: Date())
        
//        memos.append(memo) // 뒤에 추가
        memos.insert(memo, at: 0) // 앞에 추가
    }
    
    func removeMemo(_ targetMemo: Memo) {
//        var index: Int = 0
//        for tempMemo in memos {
//            if tempMemo.id == targetMemo.id {
//                memos.remove(at: index)
//                break
//            }
//            index += 1
//        }
        
        memos = memos.filter { $0.id != targetMemo.id }
    }
}
