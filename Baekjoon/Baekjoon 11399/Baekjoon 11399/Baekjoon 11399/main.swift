//
//  main.swift
//  Baekjoon 11399
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let size = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
var answer = [Int](repeating: 0, count: size)

for i in 0..<input.count {
    var sum = 0
    for j in 0...i {
        sum += input[j]
    }
    
    answer[i] += sum
}

var ans = 0
for i in 0..<answer.count {
    ans += answer[i]
}

print(ans)
