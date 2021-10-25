import Cocoa

// Object(Structure, Class) = Data(Property) + Method
// Structure(Stack) : Value Types(값을 복사), Copy
// Class(Heap) : Reference Types(값을 참조), Share

// Stack(fast) 특징 :
// - LIFO(Last In First Out)
// - 스택은 Stack Pointer를 사용하여 할당・해제를 처리, 스택은 단순한 구조를 가진만큼 시간복잡도는 O(1)으로 속도가 매우 빠름
// - 함수에서 변수를 만들면 스택에 의해 생성되고 함수 기능 실행 후 return 후엔 해당 변수도 스택에서 자동 제거

// Heap(slow) 특징 :
// - 힙은 상당히 큰 메모리 풀을 가지고 있고, 시스템에서 동적으로 메모리를 할당 요청할 수 있음.
// - 동적할당 방법을 사용하기 때문에 힙 영역에서 사용하지 않은 블록을 찾아서 메모리를 할당 처리.
// - 할당을 해제하기 위해서는 해당 메모리를 적절한 위치로 다시 삽입.
// - 힙은 스택처럼 자동으로 데이터를 제거하지 않기 떄문에 개발자가 신경을 많이 써야함.

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        // uppercased() : 대문자로 변경
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

// struct을 class로 변환
class PersonClass {
    var firstName: String
    var lastName: String
    
    // 클래스가 생성이 됐을 때 클래스 객체를 생성할 때 사용하는 생성함수
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        // uppercased() : 대문자로 변경
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

// value 타입
personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName

// 참조 타입
personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName

personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName
