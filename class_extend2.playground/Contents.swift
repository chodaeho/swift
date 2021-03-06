import UIKit


struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    

    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
}

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)

class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

//let student1 = Student(firstName: "Jason", lastName: "Lee")
//let student2 = StudentAthlete(firstName: "Jay", lastName: "Lee", sports: ["Football"])

var athelete1 = StudentAthlete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam

//athelete1에서는 접근 안됨
//athelete1.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

// athelete1 = athelete2를 명시적으로 표현
athelete1 = athelete2 as StudentAthlete
athelete1.train()
athelete1.trainedTime

// 다운 캐스팅
if let son = athelete1 as? FootballPlayer {
    son.footballTeam
}
