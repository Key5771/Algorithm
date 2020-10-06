//
//  main.swift
//  Baekjoon 10822
//
//  Created by 김기현 on 2020/10/06.
//

import Foundation

let input = readLine()!.split(separator: ",").map { Int($0)! }

var sum = 0

for i in 0..<input.count {
    sum += input[i]
}

print(sum)
