//
//  main.swift
//  Baekjoon 2902
//
//  Created by 김기현 on 2020/09/30.
//

import Foundation

let input = readLine()!.split(separator: "-").map { String($0) }
var answer = ""

for i in 0..<input.count {
    let element = input[i]
    answer += String(element.first!)
}

print(answer)

