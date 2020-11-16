//
//  main.swift
//  Baekjoon 2953
//
//  Created by 김기현 on 2020/11/16.
//

var arr = [[Int]]()
for _ in 0..<5 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

var answer = [(Int, Int)]()
for i in 0..<arr.count {
    var sum = 0
    for j in 0..<arr[i].count {
        sum += arr[i][j]
    }
    
    answer.append((i+1, sum))
}

answer.sort { (lhs, rhs) -> Bool in
    return lhs.1 > rhs.1
}

print("\(answer[0].0) \(answer[0].1)")

