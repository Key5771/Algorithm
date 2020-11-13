//
//  main.swift
//  Baekjoon 2475
//
//  Created by 김기현 on 2020/11/13.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
var sum = 0
for i in 0..<input.count {
    sum += input[i] * input[i]
}
print(sum % 10)
