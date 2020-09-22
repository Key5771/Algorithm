//
//  main.swift
//  Baekjoon 11721
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let input = readLine()!.map { String($0) }

var str = ""
var answer = [String]()

for i in 0..<input.count {
    if str.count < 10 {
        str += input[i]
    } else {
        answer.append(str)
        str = input[i]
    }
}

answer.append(str)

for i in 0..<answer.count {
    print(answer[i])
}
