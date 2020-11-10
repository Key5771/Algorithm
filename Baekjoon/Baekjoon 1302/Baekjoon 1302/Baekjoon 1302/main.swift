//
//  main.swift
//  Baekjoon 1302
//
//  Created by 김기현 on 2020/11/10.
//

let size = Int(readLine()!)!
var dict = [String : Int]()
for _ in 0..<size {
    let input = readLine()!
    
    if dict[input] == nil {
        dict[input] = 1
    } else {
        dict[input]! += 1
    }
}

let max = dict.values.max()!
var answer = [String]()

for (key, value) in dict {
    if value == max {
        answer.append(key)
    }
}

answer.sort()
print(answer.first!)
