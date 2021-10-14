import Cocoa

// 1. Array는 같은 타입만 담아야 함.
// 2. Array는 순번이 있다.(index)
// 3. 순서가 있거나 순서를 알면 유용할때 사용함.

// 두가지 중 골라서 Array 선언 사용하면 됨.
var evenNumbers: [Int] = [2, 4, 6, 8]
var evenNumbers2: Array<Int> = [2, 4, 6, 8]

// Array에 element 추가하기(단일)
evenNumbers.append(10)
// Array에 element 추가하기(멀티)
evenNumbers += [12, 14, 15]
evenNumbers.append(contentsOf: [18, 20])

// *중요
// Array가 비워 있다면 true, element가 있다면 false
let isEmpty = evenNumbers.isEmpty

// *중요
// Array element의 갯수
evenNumbers.count

// Array element의 첫번째
// Array element가 없을 수 있기 때문에 옵셔널 바인딩을 해야함
if let firstElement = evenNumbers.first {
    print("--> first item is : \(firstElement)")
}

// Array element의 최소, 최대값
evenNumbers.min()
evenNumbers.max()

// *중요
// index로 element 가져오기
var firstItem = evenNumbers[0]
var secondItem = evenNumbers[1]

// Fatal error: Index out of range으로 크래시가 발생할 수 있으므로 조심해야함.
//var twentithItem = evenNumbers[19]

// range 타입으로 element를 가져오기
let firstThree = evenNumbers[0...2]

// Array element에 특정 값이 있는지 확인
evenNumbers.contains(3)
evenNumbers.contains(4)

// 새로운 element 추가
evenNumbers.insert(0, at: 0)

// element 전체 삭제
//evenNumbers.removeAll()

// index로 element 삭제
evenNumbers.remove(at: 0)
evenNumbers

// element update
evenNumbers[0] = -2
evenNumbers

// range타입을 이용해서 값 변경
evenNumbers[0...2] = [-2, 0 ,2]
evenNumbers

// index의 값 바꾸기
evenNumbers.swapAt(0, 9)

// for loop로 값 가져오기
for num in evenNumbers {
    print(num)
}

// *중요
// for loop로 index, 값 가져오기
for (index, num) in evenNumbers.enumerated() {
    print("\(index), \(num)")
}

// Array의 앞 순서부터 index 말고 나머지를 리턴 받고 싶을때(Array element에는 영향 없음)
evenNumbers.dropFirst(3)

// Array의 뒷 순서부터 index 말고 나머지를 리턴 받고 싶을때(Array element에는 영향 없음)
evenNumbers.dropLast(3)

// Array의 앞 순서부터 index만 가져오기
evenNumbers.prefix(3)

// Array의 뒷 순서부터 index만 가져오기
evenNumbers.suffix(3)

