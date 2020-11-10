//
//  main.swift
//  Baekjoon 2167
//
//  Created by 김기현 on 2020/11/10.
//

let size = readLine()!.split(separator: " ").map { Int($0)! }
let n = size[0]
let m = size[1]

var arr = [[Int]]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

let k = Int(readLine()!)!
var order = [(Int, Int, Int, Int)]()
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    order.append((input[0], input[1], input[2], input[3]))
}

var answer = [Int]()
for k in 0..<order.count {
    let i = order[k].0 - 1
    let j = order[k].1 - 1
    let x = order[k].2 - 1
    let y = order[k].3 - 1
    
    var sum = 0
    for a in i...x {
        for b in j...y {
            sum += arr[a][b]
        }
    }
    
    answer.append(sum)
}

for i in 0..<answer.count {
    print(answer[i])
}
