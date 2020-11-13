//
//  main.swift
//  Baekjoon 10156
//
//  Created by 김기현 on 2020/11/13.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
let result = input[0] * input[1] - input[2]

if result > 0 {
    print(result)
} else {
    print(0)
}

