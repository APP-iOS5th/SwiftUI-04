struct SampleStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
    func buildHelloMsg() {
        "Hello " + name
    }
}

class SampleClass {
    var name: String
    init(name: String) {
        self.name = name
    }
    func buildHelloMsg() {
        "Hello " + name
    }
}

let myStruct1 = SampleStruct(name: "Mark")
var myStruct2 = myStruct1
myStruct2.name = "David"

print(myStruct1.name)
print(myStruct2.name)

let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name)
print(myClass2.name)


enum Temperature {
    case hot
    case warm
    case cold(cetigrade: Int)
}

func displayTempInfo(temp: Temperature) {
    switch temp {
    case .hot:
        print("It is hot.")
    case .warm:
        print("It is warm.")
    case .cold(let centigrade) where centigrade <= 0:
        print("Ice warning: \(centigrade) degrees.")
    case .cold:
        print("It is cold.")
    }
}

displayTempInfo(temp: .cold(cetigrade: -10))
