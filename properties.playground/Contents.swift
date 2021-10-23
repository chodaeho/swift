import Cocoa


// 메소드 vs 프로퍼티
// - 프로퍼티 : 호출시 저장된 값을 하나 반환한다.
// - 메소드 : 호출시 어떤 작업을 한다.
// 계산이 많이 필요하거나 DB 또는 파일 접근이 필요 할 시는 메소드로 하는것이 적절하고 그렇지 않다면 Computed 프로퍼티로 작성하는 것을 권장

struct Person {
    // Stored Property
    // 객체 안에 값을 저장할 때 사용
    var firstName: String {
        // 값이 변하기 직전 시점을 알 수 있음.
        // didSet 전에 willSet이 먼저 작동함.
        willSet {
            print("willSet : \(firstName) --> \(newValue)")
        }
        
        // didSet을 이용해서 값이 바뀐 시점을 알 수 있음.
        // Stored Property에서만 가능
        didSet {
            print("didSet : \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    // lazy Property
    // 인스턴스가 생성될 때 실행되기 보다는 해당 프로퍼티에 접근될 때 실행됨
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
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
    // 생성된 인스턴스와 상관없이 struct의 타입혹은 class의 타입 자체의 속성을 정하고 싶을때 static 키워드를 사용 하여 type property를 만들 수 있음
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

person.isPopular
