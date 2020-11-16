//
//  main.swift
//  Baekjoon 9085
//
//  Created by 김기현 on 2020/11/16.
//


let size = Int(readLine()!)!
for _ in 0..<size {
    let _ = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var sum = 0
    for i in 0..<input.count {
        sum += input[i]
    }
    print(sum)
}

