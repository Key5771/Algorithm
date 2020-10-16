//
//  main.swift
//  Baekjoon 1120
//
//  Created by 김기현 on 2020/10/16.
//

import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }
let first = input[0].map { String($0) }
let second = input[1].map { String($0) }
let num = second.count - first.count
var answer = 50

for i in 0...num {
    var count = 0
    for j in 0..<first.count {
        if first[j] != second[i+j] {
            count += 1
        }
    }
    
    answer = min(answer, count)
}

print(answer)
