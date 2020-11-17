//
//  main.swift
//  Baekjoon 5586
//
//  Created by 김기현 on 2020/11/17.
//


let input = readLine()!.map { String($0) }
let joi = ["J", "O", "I"]
let ioi = ["I", "O", "I"]
var joiCount = 0
var ioiCount = 0

for i in 0..<input.count - 2 {
    var jCount = 0
    var iCount = 0
    for j in i...i+2 {
        if input[j] == joi[j-i] {
            jCount += 1
        }
        
        if input[j] == ioi[j-i] {
            iCount += 1
        }
    }
    
    if jCount == 3 {
        joiCount += 1
    }
    
    if iCount == 3 {
        ioiCount += 1
    }
}

print(joiCount)
print(ioiCount)

