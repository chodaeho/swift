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
