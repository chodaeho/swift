import Cocoa

// 값이 있을수도 있고 없을수도 있는 변수를 선언할때 ? 룰 붙임
var carName: String?
carName = "페라리"

// 형변환 시 String 타입이지만 숫자로 되어 있다면 Int형으로 형변환 됨
let num = Int("10")

// Optional 고급 기능 4가지
// 1. Forced unwrapping > 강제 언랩핑
// 2. Optional binding (if let) > 언랩핑 방법 1
// 3. Optional binding (guard) > 언랩핑 방법 2
// 4. nil coalescing > 언랩핑 후 값이 없으면 디폴트 값 할당

// 1. Forced unwrapping : 변수값이 nil 이면 오류 발생.
print(carName!)

// 2. Optional binding (if let)
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name nil")
}

func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    } else {
        print("Int로 컨버팅 안됨.")
    }
}
printParsedInt(from: "hello")

// 3. Optional binding (guard) : if let 옵셔널 바인딩 보다 복잡성을 줄일 수 있음.
func printParsedIntGuard(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안됨.")
        return
    }
    print(parsedInt)
}
printParsedIntGuard(from: "100")

// 4. nil coalescing
carName = nil
let myCarName: String = carName ?? "벤츠"
print(myCarName)

// 도전과제
// 1. 음식이름을 담는 변수를 작성(String?)
let favoriteFood: String? = "순대국"
// 2. 옵셔널 바인딩을 이용해서 값을 확인해 보기
if let foodName = favoriteFood {
    print(foodName)
} else {
    print("음식 이름 없음")
}
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?
func printNickName(name: String?) {
    guard let nickname = name else {
        print("nickname 만드시오")
        return
    }
    print(nickname)
}
printNickName(name: "슈퍼맨")
