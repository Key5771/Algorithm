//
//  main.swift
//  Baekjoon 17608
//
//  Created by 김기현 on 2020/11/16.
//

let size = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<size {
    let input = Int(readLine()!)!
    arr.append(input)
}

var max = 0
var count = 0
for i in (0..<arr.count).reversed() {
    if arr[i] > max {
        count += 1
        max = arr[i]
    }
}

print(count)

