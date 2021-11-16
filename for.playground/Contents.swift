import UIKit

//for h in 1...12 {
//    print("======\(h) 시======")
//    for m in 0..<60 {
//        print("\(h)시 \(m)분")
//    }
//}

//구구단 찍어내기
//for guguDan in stride(from: 1, through: 9, by: 1) {
//
//    print(terminator:"\n")
//    for gugu in stride(from: 2, through: 9, by: 1) {
//
//        print("\(gugu)*\(guguDan)=\(gugu*guguDan)" , terminator:"\t");
//    }
//}


//separator : 문자 배열 사이에 함께 나옴
//print("현빈", "원빈", "미스터빈", "커피빈", "젤리빈", separator:"^^")


//print("아기상어")
//print("엄마상어", terminator:"==>")
//print("아빠상어", terminator:"\n")
//print("할머니상어", terminator:"\t\t")
//print("할아버지상어")
//print("2번 별")
//for line in 0..<5 {
//  for star in 0..<5 {
//      print("*", terminator:"")
//  }
//  print("")
//}
//for line in stride(from: 4, through: 0, by: -1) {
//    for star in stride(from: line, through: 0, by: -1) {
//        print("*",terminator:"")
//    }
//    print()
//}

//print("3번 별")
for line in 0..<5 {
    
    for star in line..<5 {
        print(" ", terminator:"")
    
    }
    print("*")
}

