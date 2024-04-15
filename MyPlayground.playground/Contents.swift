import UIKit

var greeting = "Hello, playground"

//class 클래스 이름: 부모 클래스 {
//    // 프로퍼티
//    // let, var 정의
//    // 인스턴스 메서드
//    // 타입 메서드
//}

class BackAccount {
    var accountBlance: Float = 0
    var accountNumber: Int = 0
}

var bankAccount = BackAccount()

print(bankAccount.accountBlance)
print(bankAccount.accountNumber)    
