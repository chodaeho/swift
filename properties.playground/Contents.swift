import Cocoa

struct Person {
    // Stored Property
    // 객체 안에 값을 저장할 때 사용
    var firstName: String
    var lastName: String
    
    // Computed Property
    // stored property에 저장된 값을 가공 해서 사용할 때 사용
    var fullName: String {
        // 값을 새로 세팅하고 사용하기 위해서는 getter setter 사용
        get {
            return "\(firstName) \(lastName)"
        }
        
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    // type property
    // 생성된 인스턴스와 상관없이 struct의 타입혹은 class의 타입 자체를 정하고 싶을때 static 키워드를 사용 하여 type property를 만들 수 있음
    static let isAlien: Bool = false
}

var person = Person(firstName: "DaeHo", lastName: "Cho")

person.firstName
person.lastName

person.firstName = "Su"
person.lastName = "Kim"

person.firstName
person.lastName

person.fullName
person.fullName = "Jay Park"
person.fullName

Person.isAlien
