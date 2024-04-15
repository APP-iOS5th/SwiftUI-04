
protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildMessage() -> String {
        // 표현식 1
        // 표현식 2
        // 표현식 3
        // 표현식 4
        // 표현식 5
        // ... 마지막 표현식이 반환 타입과 일치할 경우 함수의 결과로 반환 (조건 반환 있는 경우 불가)
        "Hello" + name
    }
}
