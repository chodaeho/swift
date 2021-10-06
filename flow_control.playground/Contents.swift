import Cocoa
import Foundation


// --- while loop

print("--- while")
// 조건 -> 코드 수행 -> 조건 -> 코드 수행
var i = 10
while i < 10 {
    print(i)
//    if i == 5 {
//        break
//    }
    i += 1
}

print("--- Repeat")
// 코드 수행 -> 조건 -> 코드 수행 -> 조건
i = 10
// repeat 수행 후 조건 검사
repeat {
    print(i)
    i += 1
} while i < 10



// --- for loop

// 0~10 까지
let closedRanges = 0...10

// 0~9 까지
let halfClosedRange = 0..<10

var sum = 0
for i in closedRanges {
    print("---> \(i)")
    sum += i
}
print("---> total sum : \(sum)")

var sinValue: CGFloat = 0

for i in closedRanges {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Cho"
// 사용 하지 않는 변수는 _ 사용
for _ in closedRanges {
    print("---> name: \(name)")
}

for i in closedRanges {
    if (i % 2 == 0) {
        print("---> 짝수: \(i)")
    }
}

// 조건 for문을 사용
for i in closedRanges where (i % 2 == 0) {
    print("---> 조건 for문: \(i)")
}

// continue를 사용해 코드를 무시하고 다음 루프 진행
for i in closedRanges {
    if i == 3 {
        // i가 3일때는 밑의 코드를 무시하고 다음 루프로 진행
        continue
    }
    print("for문 continue 사용: \(i)")
}

//중첩 for문
//중첩 for문은 지양 할 것
for i in halfClosedRange {
    for j in halfClosedRange {
        print("gugu -> \(i) * \(j) = \(i * j)")
    }
}



// --- switch loop

let num = 10
// switch문 int
switch num {
case 0:
    print("--> 0")
case 0...10:
    print("--> 0 부터 10 사이")
case 10:
    print("--> 10")
default:
    print("--> 나머지")
}

let pet = "bird"

// switch문 string
switch pet {
case "dog", "cat", "bird":
    print("애완동물")
default:
    print("야생동물")
}

let number = 5
switch number {
case _ where number % 2 == 0:
    print("---> 짝수")
default:
    print("---> 홀수")
}


let coordinate = (x: 20, y: 0)
switch coordinate {
case (0, 0):
    print("---> 원점")
case (let x, 0):
    print("---> x축 x:\(x)")
case (0, let y):
    print("---> y축 y:\(y)")
case (let x, let y) where x == y:
    print("---> x랑 y랑 같음 x,y = \(x),\(y)")
case (let x, let y):
    print("---> 좌표 어딘가 x,y = \(x),\(y)")
}
