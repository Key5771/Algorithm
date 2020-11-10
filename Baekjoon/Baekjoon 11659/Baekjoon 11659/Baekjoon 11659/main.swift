//
//  main.swift
//  Baekjoon 11659
//
//  Created by 김기현 on 2020/11/10.
//

let size = readLine()!.split(separator: " ").map { Int($0)! }
let n = size[0]
let m = size[1]
var origin = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [Int](repeating: 0, count: n+1)

for i in 1...n {
    arr[i] = arr[i-1] + origin[i - 1]
}

var order = [(Int, Int)]()
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    order.append((input[0], input[1]))
}

var answer = [Int]()
for i in 0..<order.count {
    let start = order[i].0
    let end = order[i].1
    
    let result = arr[end] - arr[start - 1]
    answer.append(result)
}

for i in 0..<answer.count {
    print(answer[i])
}
