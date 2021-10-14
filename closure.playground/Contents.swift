import Cocoa
/*
{(param) -> returnType in
    statement
    .....
}
 */

//simple Closure
let simpleClosure = {
    
}
simpleClosure()

// 코드블록을 구현한 Closure
let codeBlockClosure = {
    print("코드블록을 구현한 Closure")
}
codeBlockClosure()

// 인풋 파라미터를 받는 Closure
let inputClosure: (String) -> Void = { name in
    print("나의 이름은 \(name) 입니다.")
}
inputClosure("조대호")

// 값을 리턴하는 Closure
let returnClosure: (String) -> String = {name in
    let message = "나의 이름은 \(name) 입니다."
    return message
}
let result = returnClosure("김가을")
print(result)

// Closure를 파라미터로 받는 함수
func someSimpleFunction(message: String, closure: () -> Void) {
    print("함수에서 호출 됨 \(message)")
    closure()
}
someSimpleFunction(message: "야호", closure: {
    print("Hello Closure")
})

// Trailing(후행) Closure
func trailingClosure(message: String, closure: () -> Void) {
    print("함수에서 호출 됨 \(message)")
    closure()
}
trailingClosure(message: "야호") {
    print("Hello Trailing Closure")
}
