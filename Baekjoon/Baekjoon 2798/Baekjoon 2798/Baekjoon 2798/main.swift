//
//  main.swift
//  Baekjoon 2798
//
//  Created by 김기현 on 2020/09/25.
//

import Foundation


let input = readLine()!.split(separator: " ").map { Int($0)! }
let size = input[0]
let target = input[1]

let card = readLine()!.split(separator: " ").map { Int($0)! }
var answerArr = [Int]()

for i in 0..<card.count {
    for j in i+1..<card.count {
        for k in j+1..<card.count {
            answerArr.append(card[i] + card[j] + card[k])
        }
    }
}

var answer = 0

for i in 0..<answerArr.count {
    if answerArr[i] <= target {
        if abs(target - answer) > abs(target - answerArr[i]) {
            answer = answerArr[i]
        }
    }
}

print(answer)
