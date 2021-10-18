import Cocoa

//함수의 정의
//param:X, return:X
func fn_1() {
    print("fn_1 실행")
}

//param:O, return:X
func fn_2(x:Int, y:Int) {
    print("fn_2() 실행 \(x),\(y)")
}

//param:O, return:X
func fn_3(x: Array<Int>) {
    var newParam = Array(x)
    newParam[1] = 2345
    print("fn_3() 실행 \(newParam)")
}

//param:X, return:O
func fn_4()->Int{
    print("fn_4 실행")
    return 100
}

//param:O, return:O
func fn_5(a: Int, b: Int)->Int{
    print("fn_5() 실행 \(a), \(b)")
    return a * b
}
//함수의 호출
var rr1 = fn_1()
//매개변수와 인수의 차이
//매개변수와 인수는 같은 뜻이지만 매개변수는 function에서 받는 parameter, 인수는 function 호출 할때 넣는 값을 인수라고 한다.
var rr2 = fn_2(x: 10,y: 20)
var arr = [11,22,33]

//인수와 매개변수는 별개다.
fn_3(x: arr)
var rr4 = fn_4()

var rr5 = fn_5(a: 5, b: 6)
print("rr1 : \(rr1)")
print("rr2 : \(rr2)")
print("rr4 : \(rr4)")
print("rr5 : \(rr5)")

func circle(r: Double) {
    let pi = 3.14
    let area = r * r * pi
    let border = r * 2 * pi
    print("원 : \(area), \(border)")
}

circle(r: 5)
circle(r: 7)


// 직사각형, 직각삼각형의 넓이, 둘레를 출력하는 함수를 정의, 호출 하세요
func rectangle(h: Int, w: Int)->Int {
    let result = (h + w) * 2
    return result
}

var result = rectangle(h: 5, w: 5)
print("직사각형 넓이 : \(result)")

typealias shape = (title: String, area: Int, border: Int)

func test1 ()->shape {
    return("test1 제목", 1, 1111)
}

func test2 ()->shape {
    return("test2 제목", 2, 2222)
}

print(test1())
var shapes = [test1(), test2()]
var tot = 0
for sh in shapes {
    print("sh.title : \(sh.title)")
    tot += sh.area
}

print("tot : \(tot)")



/*
 학생성적을 받아 학생들의 종류, 총점, 평균을 구하고 전체 학생의 평균의 총점, 가장 높은 점수를 받은 학생을 출력하세요.
 
 학생 시험 점수
 exam() => 일반학생, examSpec() => 특기생
 일반학생 입력값 : 이름, 국어, 영어, 수학
 특기생 입력값 : 이름, 국어, 영어, 수학, 예체능
 
 출력결과 :
 각 학생들의 구분, 이름, 총점, 평균
 전체 학생의 평균의 총점
 전체 학생의 평균의 가장 높은 점수
 */

typealias student = (kind: String, name: String, sum: Int, avg: Double)

func exam(name: String,kor: Int, eng: Int, math: Int) -> student {
    let sum = kor + eng + math
    
    return("일반학생", name, sum, Double(sum/3))
}

func examSpec(name: String,kor: Int, eng: Int, math: Int, ye: Int) -> student {
    let sum = kor + eng + math + ye
    
    return("특기생", name, sum, Double(sum/4))
}

var stude: [student] = [
    exam(name: "조대호", kor: 80, eng: 81, math: 91),
    examSpec(name: "김뭐시기", kor: 80, eng: 81, math: 91, ye: 88),
    exam(name: "임꺽정", kor: 60, eng: 40, math: 94),
    exam(name: "홍길동", kor: 50, eng: 80, math: 53),
    examSpec(name: "김기호", kor: 80, eng: 81, math: 91, ye: 88)
]

var totStude: Double = 0.0
var max: student = ("","",-1,-1)
for i in stude {
    totStude += i.avg
    if max.avg < i.avg {
        max = i
    }
    print(i)
}
print("합계 \(totStude)")
print("최고점수 \(max.name)")

//
//func exam(name: String,kor: Int, eng: Int, math: Int) -> student {
//    var sum: Int = kor+eng+math
//    var avg: Int = sum/3
//
//    return("일반학생", name, sum, avg)
//}
//
//print(exam(name: "조대호", kor: 80, eng: 90, math: 100))
//
//
//func examSpec(name: String,kor: Int, eng: Int, math: Int, ye: Int) -> student {
//    var sum: Int = kor+eng+math+ye
//    var avg: Int = sum/4
//
//    return("특기생", name, sum, avg)
//}
//
//var sum = [exam(name: "조대호", kor: 80, eng: 90, math: 100),examSpec(name: "조대호", kor: 80, eng: 90, math: 100, ye: 90)]
//
//var tot1 = 0
//for result in sum {
//    print("sh.title : \(result.sum)")
//    tot1 += result.sum
//}
//print(tot1)
//
//print(examSpec(name: "조대호", kor: 80, eng: 90, math: 100, ye: 90))
