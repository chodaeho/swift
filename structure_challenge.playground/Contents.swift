import Cocoa

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생 수를 가지는 struct 만들기 (Lecture)
// 2. 강의 Array와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

struct Lecture {
    let name: String
    let instructor: String
    let numOfStudent: Int
}

func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""
    
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }
    
    print("강사님의 강의 : \(lectureName)")
}

let lec1 = Lecture(name: "iOS", instructor: "Cho", numOfStudent: 5)
let lec2 = Lecture(name: "aOS", instructor: "Kim", numOfStudent: 5)
let lec3 = Lecture(name: "java", instructor: "Jason", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "Cho", lectures: lectures)
