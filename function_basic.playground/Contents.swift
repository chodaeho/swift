import Cocoa


// function : 독립적인 기능을 수행하는 코드 뭉치
// method : 클래스, 구조체, 열거형에 포함어 있는 함수
func printName() {
    print("---> My name is cho")
}
printName()


// param 1개
// 숫자를 받아서 10을 곱해서 출력한다.
func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

// param 2개
// 물건값과 갯수를 받아서 전체 금액을 출력하는 함수
func printTotalPrice(price: Int, count: Int) {
    // 언더스코어를 이용하여 파라미터명을 명시 하지 않는 방법도 있음.
    print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)


// 파라미터 default 값 지정
func printTotalPriceWithDefaultValue(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPriceWithDefaultValue(count: 5)
printTotalPriceWithDefaultValue(count: 10)
printTotalPriceWithDefaultValue(price: 2000, count: 1)


// function 리턴 값 자료형 지정
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}
let calculatedPrice = totalPrice(price: 10000, count: 77)

