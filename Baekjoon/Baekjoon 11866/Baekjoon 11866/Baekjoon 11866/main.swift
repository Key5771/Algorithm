//
//  main.swift
//  Baekjoon 11866
//
//  Created by 김기현 on 2020/10/08.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = [Int]()
var n = input[0]
var m = input[1]

for i in 0..<n {
    arr.append(i + 1)
}

var index = 0
var answer = [Int]()
while !arr.isEmpty {
    let length = arr.count
    index = index + m - 1
    
    if index >= length {
        index = index % length
    }
    
    answer.append(arr.remove(at: index))
}

var str = "<"

for i in 0..<answer.count {
    str += String(answer[i])
    if i != answer.count - 1 {
        str += ", "
    }
}

str += ">"

print(str)
