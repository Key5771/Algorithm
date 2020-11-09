//
//  main.swift
//  Baekjoon 1026
//
//  Created by 김기현 on 2020/11/09.
//

let size = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let arr2 = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

var sum = 0
for i in 0..<arr.count {
    sum += arr[i] * arr2[i]
}

print(sum)

