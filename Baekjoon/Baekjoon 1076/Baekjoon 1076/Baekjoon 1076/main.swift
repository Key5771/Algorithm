//
//  main.swift
//  Baekjoon 1076
//
//  Created by 김기현 on 2020/11/16.
//

let dict = ["black": (0, 1),
            "brown": (1, 10),
            "red": (2, 100),
            "orange": (3, 1000),
            "yellow": (4, 10000),
            "green": (5, 100000),
            "blue": (6, 1000000),
            "violet": (7, 10000000),
            "grey": (8, 100000000),
            "white": (9, 1000000000)]

var sum = 0
var count = 0
for i in 0..<3 {
    let input = readLine()!
    let temp = dict[input]!
    if i < 2 {
        if count == 0 {
            sum += temp.0
            sum *= 10
        } else {
            sum += temp.0
        }
    } else {
        sum *= temp.1
    }
    
    count += 1
}

print(sum)



