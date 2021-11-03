import UIKit

//1. 정의
class HandPhone {
    //멤버변수
    var name: String = "아이폰"
    var battery: Int = 100
    
//    함수
    func call() {
        battery -= 20
        print("\(name) 전화 발신 : \(battery)")
    }
    
    func photo(_ target: String) {
        battery -= 20
        print("\(name) \(target) 사진 촬영 : \(battery)")
//        name - 멤버변수, target - 지역변수
    }
    
}

//2. 선언
var myPhone: HandPhone

//3. 생성
myPhone = HandPhone()
//선언 = 생성

//항상 함수는 스택(stack)에서 실행함.
print(myPhone)
print(myPhone.name)
print(myPhone.battery)

myPhone.call()
myPhone.photo("사람")

print("=================================")
var ph1:HandPhone = HandPhone()
var ph2:HandPhone = HandPhone()

ph1.name = "아이폰xs"

print("ph1.name: \(ph1.name)")
print("ph2.name: \(ph2.name)")

ph1.call()
ph1.photo("펭수")
ph1.call()
ph2.photo("번개맨")
ph2.call()
ph1.call()

//print("=================================")
//
//class Student {
//    //멤버변수
//    var num: Int = 0
//    var name: String = ""
//    var ban: String = ""
//    var tel: String = ""
//    var jum:[Int] = []
//    var sum: Int = 0
//    var avg: Int = 0
//
//    func input(num: Int, name: String, ban: String, tel: String, kor:Int, eng:Int, math:Int) {
//        self.num = num
//        self.name = name
//        self.ban = ban
//        self.tel = tel
//        self.jum = [kor, eng, math]
//
//        cal()
//        printInfo()
//    }
//
//    func cal() {
//        sum = 0
//        for i in jum {
//            sum += i
//        }
//        avg = sum/jum.count
//    }
//
//    func printInfo() {
//        print("\(ban)","\(name)","\(num)","\(tel)","\(jum)","\(sum)","\(avg)")
//    }
//}
//
//var sInfo1: Student = Student()
//var sInfo2: Student = Student()
//var sInfo3: Student = Student()
//var sInfo4: Student = Student()
//
//sInfo1.input(num: 11, name: "조대호", ban: "1반", tel: "01087027818", kor: 80, eng: 60, math: 40)
//sInfo2.input(num: 22, name: "홍길동", ban: "2반", tel: "11111111111", kor: 60, eng: 60, math: 50)
//sInfo3.input(num: 33, name: "임꺽정", ban: "3반", tel: "22222222222", kor: 40, eng: 50, math: 30)
//sInfo4.input(num: 44, name: "김기호", ban: "4반", tel: "33333333333", kor: 70, eng: 80, math: 40)

print("=================================")

class Student {
    //멤버변수
    var num: Int = 0
    var name: String = ""
    var ban: String = ""
    var tel: String = ""
    var jum:[Int] = []
    var sum: Int = 0
    var avg: Int = 0
    
    init(num: Int, name: String, ban: String, tel: String, kor:Int, eng:Int, math:Int) {
        self.num = num
        self.name = name
        self.ban = ban
        self.tel = tel
        self.jum = [kor, eng, math]
        
        cal()
        printInfo()
    }

    func cal() {
        sum = 0
        for i in jum {
            sum += i
        }
        avg = sum/jum.count
    }
    
    func printInfo() {
        print("\(ban)","\(name)","\(num)","\(tel)","\(jum)","\(sum)","\(avg)")
    }
}

Student(num: 11, name: "조대호", ban: "1반", tel: "01087027818", kor: 80, eng: 60, math: 40)
Student(num: 22, name: "홍길동", ban: "2반", tel: "11111111111", kor: 60, eng: 60, math: 50)
Student(num: 33, name: "임꺽정", ban: "3반", tel: "22222222222", kor: 40, eng: 50, math: 30)
Student(num: 44, name: "김기호", ban: "4반", tel: "33333333333", kor: 70, eng: 80, math: 40)

print("=================================")
