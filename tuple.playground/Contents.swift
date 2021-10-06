import Cocoa

// --- Tuple ---
let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

//다음은 튜플을 이용헤 위의 코드보다 명시적으로 표현 가능함
let coordinatesNamed = (x: 2, y: 5)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

//다음은 위의 코드를 한 줄로 표현 가능함
let (x3, y3) = coordinatesNamed

x3
y3

