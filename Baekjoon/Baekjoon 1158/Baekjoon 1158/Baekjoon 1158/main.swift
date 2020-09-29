//
//  main.swift
//  Baekjoon 1158
//
//  Created by 김기현 on 2020/09/29.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[1]
var arr = [Int]()

for i in 0..<input[0] {
    arr.append(i + 1)
}

var index = k - 1
var answer = [Int]()
while arr.count != 0 {
    if index >= arr.count {
        index %= arr.count
    }
    
    let element = arr.remove(at: index)
    answer.append(element)
    index += k - 1
}

var str = "<"

for i in 0..<answer.count {
    str += "\(answer[i]), "
}

str.removeLast()
str.removeLast()
str += ">"

print(str)
