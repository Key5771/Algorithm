//
//  main.swift
//  Baekjoon 7568
//
//  Created by 김기현 on 2020/11/16.
//

let size = Int(readLine()!)!
var arr = [(Int, Int, Int, Int)]()

for i in 0..<size {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0], input[1], i, 0))
}

var answer = ""

for i in 0..<size {
    var rank = 1
    
    for j in 0..<size {
        if i == j { continue }
        if arr[i].0 < arr[j].0 && arr[i].1 < arr[j].1 {
            rank += 1
        }
    }
    
    answer += "\(rank) "
    
    if i == size - 1 {
        answer.removeLast()
    }
}

print(answer)

