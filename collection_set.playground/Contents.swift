import Cocoa

// 중복이 없는 유니크한 아이템을 관리할 때 사용
// 순서가 중요하지 않을때 사용

// Array와 비슷해 보이지만 Set은 중복된 제외하고 보여짐.
var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1]

// Collection 공통 프로퍼티
someSet.isEmpty
someSet.count

// 값이 있는지 확인
someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet

someSet.remove(1)
someSet

