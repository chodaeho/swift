import Cocoa

struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    // 1번 주석. 아래처럼 함수를 만들어 사용 해도 되지만 함수의 기능이 스토어 프로퍼티와 관련된 기능이라면 메소드로 만들어 사용하는 것을 권장.
    func remainSeats() -> Int {
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    
    // mutating : 해당 메소드를 실행 했을시 스토어 프로퍼티를 변형 할때엔 mutating를 작성 해야함.
    mutating func register() {
        // 등록된 학생수 증가시키는 기능
        numOfRegistered += 1
    }
    
    // type property
    static let target: String = "Anybody want to learn something"
    
    // type method
    static func academyName() -> String {
        return "페캠"
    }
}

var lec = Lecture(title: "iOS Basic")

// 1번 주석 참고.
//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}
//remainSeats(of: lec)

lec.remainSeats()

lec.register()
lec.remainSeats()

Lecture.target
Lecture.academyName()

// 확장(extension)에 대한 설명 예제
struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

// 제곱, 반값 method 추가
extension Math {
    static func sqaure(value: Int) -> Int {
        return value * value
    }
    static func half(value: Int) -> Int {
        return value/2
    }
}

Math.sqaure(value: 5)
Math.half(value: 20)

var value: Int = 10
// apple에서 만든 Int도 확장도 가능
extension Int {
    func square() -> Int {
        return self * self
    }
    func half() -> Int {
        return self/2
    }
}

value.square()
value.half()
