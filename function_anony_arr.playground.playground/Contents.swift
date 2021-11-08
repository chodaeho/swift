import UIKit


func add(_ a:Int, _ b:Int) {
    print("add(): \(a) + \(b) = \(a + b)")
}

let min = {
    (a:Int, b:Int) -> () in
        print("min(): \(a) - \(b) = \(a - b)")
}

let mul = {
    (a:Int, b:Int) -> () in
        print("mul(): \(a) * \(b) = \(a * b)")
}

let ffa = add
let ffmi = min
let ffmu = mul

let fnArr = [add, min, mul]
let fnDic = ["더하기" : add, "빼기" : min, "곱하기" : mul]

func fnTot(_ fnName:String, _ a:Int, _ b:Int) {
    fnDic[fnName]!(a,b)
}

ffa(7,8)
ffmi(10,3)
ffmu(13,4)
print("=====================")
add(7,8)
min(10,3)
mul(13,4)
print("=====================")
fnArr[0](7,8)
fnArr[1](10,3)
fnArr[2](13,4)
print("=====================")
fnDic["더하기"]!(7,8)
fnDic["빼기"]!(10,3)
fnDic["곱하기"]!(13,4)
print("=====================")
fnTot("더하기", 7, 8)
fnTot("빼기", 10, 3)
fnTot("곱하기", 13, 4)
