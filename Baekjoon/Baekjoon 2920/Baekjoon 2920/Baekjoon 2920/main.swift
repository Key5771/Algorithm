//
//  main.swift
//  Baekjoon 2920
//
//  Created by 김기현 on 2021/02/03.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var answer = ""

if answer == "" {
    for i in 0..<input.count {
        if i + 1 != input[i] {
            break
        }
        
        if i + 1 == input.count {
            answer = "ascending"
        }
    }
}

if answer == "" {
    for i in 0..<input.count {
        if i + 1 != input[input.count - 1 - i] {
            break
        }
        
        if i + 1 == input.count {
            answer = "descending"
        }
    }
}

if answer == "" {
    answer = "mixed"
}

print(answer)
