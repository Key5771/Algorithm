//
//  main.swift
//  Baekjoon 1475
//
//  Created by 김기현 on 2020/11/16.
//

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: 10)

while true {
    arr[input%10] += 1
    if input / 10 == 0 { break }
    input /= 10
}

var num = 0
for i in 0..<10 {
    if i != 9 && i != 6 {
        num = max(num, arr[i])
    }
}

print(max(num, (arr[6] + arr[9] + 1) / 2))

