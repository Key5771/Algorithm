//
//  main.swift
//  Baekjoon 10808
//
//  Created by 김기현 on 2020/10/16.
//

import Foundation

var alphabet = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
var count = [Int](repeating: 0, count: 26)

let input = readLine()!

for char in input {
    let index = alphabet.firstIndex(of: String(char)) ?? 0
    count[index] += 1
}

var str = ""
for i in 0..<count.count {
    str += String(count[i])
    str += " "
}

str.removeLast()
print(str)
