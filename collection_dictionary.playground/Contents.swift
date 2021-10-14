import Cocoa

// Array와 다르게 순서가 없음
// 의미 단위로 찾을때 유용함
// key(유니크 해야함)와 value로 이뤄져 있음

// 아래와 같이 dictionary를 선언함
var scoreDic: [String: Int] = ["Jason":80,"Jay":95, "jake":90]
//var scoreDic: Dictionary<String, Int> = ["Jason":80,"Jay":95, "jake":90]

// 값이 있을수도 없을수도 있기때문에 옵셔널 바인딩으로 가져오는것이 안정적
if let score = scoreDic["Jason"] {
    print(score)
} else {
    print("score 없음")
}

// 비워져 있다면 true, 값이 있다면 true
scoreDic.isEmpty

// element 갯수
scoreDic.count

// value update 하기
scoreDic["Jason"] = 99
scoreDic

// element 추가
scoreDic["Jack"] = 100
scoreDic

// element 삭제
scoreDic["Jack"] = nil
scoreDic


// for Loop로 key, value 보기
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

// for Loop로 key만 가져오기(순서 보장X)
for key in scoreDic.keys {
    print(key)
}

// for Loop로 value만 가져오기(순서 보장X)
for key in scoreDic.keys {
    print(key)
}

// 1. 이름, 직업, 도시에 대해 딕셔너리 만들기
// 2. element의 도시를 부산으로 업데이트 하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기
var userInfo: [String:String] = ["name":"조대호","job":"개발자","city":"서울"]
userInfo["city"] = "부산"

// 옵셔널 바인딩을 if문에 여러개 기재할 수 있음
func printUserInfo(userInfo: [String:String]) {
    if let name = userInfo["name"], let city = userInfo["city"]  {
        print(name)
        print(city)
    }
}

printUserInfo(userInfo: userInfo)
