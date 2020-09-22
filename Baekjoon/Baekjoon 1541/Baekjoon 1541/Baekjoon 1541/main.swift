//
//  main.swift
//  Baekjoon 1541
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let input = readLine()!
var oper = input.components(separatedBy: "-")
var num = [Int]()

for element in oper {
    let number = element.components(separatedBy: "+").map { Int($0)! }
    num.append(number.reduce(0, +))
}

var result = num[0]
for i in 1..<num.count {
    result -= num[i]
}

print(result)

