import Cocoa

//func functionName(externalName param: ParamType) -> ReturnType {
//    // .........
//    return returnValue
//}

//overload
func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}
func printTotalPrice(price: Double, count: Double) {
    print("Total Price: \(price * count)")
}
func printTotalPrice(가격: Double, 갯수: Double) {
    print("Total Price: \(가격 * 갯수)")
}

//In-out parameter
//parameter는 상수인데 inout 키워드를 통해 변경 할 수 있음.
var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
incrementAndPrint(&value)


// --- Function as a param
// 함수를 변수에 할당 할 수 있음.
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
var function = add
function(4, 2)
function = subtract
function(4, 2)

// 함수를 파라미터로 받아서 사용할 수 있음
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}
printResult(add, 10, 5)
printResult(subtract, 10, 5)
