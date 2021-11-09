import UIKit

var arr1:Array = [11,33,22,66,22,55,88,77]
var ss1:Set<Int> = [11,33,22,66,22,55,88,77]

print(arr1)

//set은 중복값이 없어지고, 순서가 뒤죽박죽이 된다.
print(ss1)

//insert() 로 값을 넣을수 있음. 자료형 같아야 함
ss1.insert(1234)
print(ss1)

//remove() 로 값을 지울수 있음.
ss1.remove(55)
print(ss1)

//count로 값의 갯수를 알수이음
print(ss1.count)

//contains()로 존재 여부를 알 수 있음 (true, false)
print(ss1.contains(11))
print(ss1.contains(9999))

//for문으로 값을 출력 할 수 있음
var arr2 = ss1.sorted() //값을 배열에 정렬 해서 넣고 출력 가능
for i in arr2 {
    print(i)
}

print("===========")
print(Int.random(in: 10...20))
print("===========")

var lotto = Set<Int>()

while true {
    lotto.insert(Int.random(in: 1...45))
    if lotto.count == 7 {
        break
    }
}
//Set은 sorted(), Array는 sort()
print(lotto.sorted())
print("lotto 끝")

//빙고판을 구현해 주세요.
//5xc5 경우의 수 : 1 -> 100
var bingo = Set<Int>()
var count = 0
while true {
    count += 1
    bingo.insert(Int.random(in: 1...100))

    if bingo.count == 25 {
        print(bingo)
        break
    }
}
var cnt = 1
for i in bingo {
    print(i, terminator:"\t")
    if (cnt % 5) == 0 {
        print()
    }
    cnt += 1
}
