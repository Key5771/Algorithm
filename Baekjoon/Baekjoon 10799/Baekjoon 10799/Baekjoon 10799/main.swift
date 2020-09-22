//
//  main.swift
//  Baekjoon 10799
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let input = readLine()!.map { String($0) }
var count = 0
var result = 0

for (index, value) in input.enumerated() {
    if value == "(" {
        count += 1
    } else {
        count -= 1
        if input[index - 1] == "(" {
            result += count
        } else {
            result += 1
        }
    }
}

print(result)


