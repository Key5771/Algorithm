//
//  main.swift
//  Baekjoon 1748
//
//  Created by 김기현 on 2020/11/13.
//

import Foundation

let input = Int(readLine()!)!
let len = String(input).count
var count = 9
var result = 0

for i in 1..<len {
    result += i * count
    count *= 10
}

result += (input - Int(pow(Double(10), Double(len - 1))) + 1) * len
print(result)

