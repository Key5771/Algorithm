//
//  main.swift
//  Baekjoon 11047
//
//  Created by 김기현 on 2020/10/28.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
var K = input[1]

var arr: [Int] = []

for _ in 0..<N {
    let input = Int(readLine()!)!
    arr.append(input)
}

var temp: Int = 0

for i in (0..<arr.count).reversed() {
    temp += K / arr[i]
    K %= arr[i]
}

print(temp)
