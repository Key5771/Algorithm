//
//  main.swift
//  Baekjoon 5565
//
//  Created by 김기현 on 2020/11/13.
//

let total = Int(readLine()!)!
var sum = 0
for _ in 0..<9 {
    let input = Int(readLine()!)!
    sum += input
}

print(total - sum)

