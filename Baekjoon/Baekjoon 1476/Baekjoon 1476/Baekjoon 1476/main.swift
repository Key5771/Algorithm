//
//  main.swift
//  Baekjoon 1476
//
//  Created by 김기현 on 2020/11/13.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
let inputArr = (input[0], input[1], input[2])
var arr = (1, 1, 1)

var year = 0
while arr != inputArr {
    if arr == inputArr { break }
    year += 1
    
    arr.0 += 1
    arr.1 += 1
    arr.2 += 1
    
    if arr.0 > 15 { arr.0 = 1 }
    if arr.1 > 28 { arr.1 = 1 }
    if arr.2 > 19 { arr.2 = 1 }
}

print(year + 1)

