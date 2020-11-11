//
//  main.swift
//  Baekjoon 1225
//
//  Created by 김기현 on 2020/11/11.
//

let input = readLine()!.split(separator: " ").map { String($0) }
let x = input[0].map { String($0) }.map { Int($0)! }
let y = input[1].map { String($0) }.map { Int($0)! }

var sum = 0
for i in 0..<x.count {
    for j in 0..<y.count {
        sum += x[i] * y[j]
    }
}

print(sum)

