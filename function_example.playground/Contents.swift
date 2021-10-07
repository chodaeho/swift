import Cocoa

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

// 1.
func makeName(firstName: String, secondName: String) {
    print("My name1 : \(firstName) \(secondName)")
}
makeName(firstName: "Cho", secondName: "DaeHo")

// 2.
func makeNameUnderScore(_ firstName: String, _ secondName: String) {
    print("My name2 : \(firstName) \(secondName)")
}
makeNameUnderScore("Cho", "DaeHo")

// 3.
func makeNameReturn(firstName: String, secondName: String) -> String{
    print("My name3 : \(firstName) \(secondName)")
    let result = "\(firstName) \(secondName)"
    return result
}
makeNameReturn(firstName: "Cho", secondName: "DaeHo")
