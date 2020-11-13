//
//  main.swift
//  Baekjoon 2914
//
//  Created by 김기현 on 2020/11/13.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
print(input[0] * (input[1]-1) + 1)

