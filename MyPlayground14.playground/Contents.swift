//var treeArray: [String] = ["Pine", "Oak", "Yew"]
var treeArray = ["Pine", "Oak", "Yew"] // 타입 추론 (생략)
var priceArray = [Float]()
var nameArray = [String](repeating: "MyString", count: 10)

let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]
let thirdArray = firstArray + secondArray

print(thirdArray.count) // 배열의 요소 개수
print(treeArray.isEmpty) // 빈 배열인지 여부
print(treeArray[2])

//treeArray[1] = "Redwood"
treeArray.append("Redwood")
//treeArray += ["Redwood"]
//treeArray = treeArray + ["Maple", "Birch"]
treeArray += ["Maple", "Birch"]
treeArray.shuffle()

print(treeArray)
print(treeArray.randomElement() ?? "")
