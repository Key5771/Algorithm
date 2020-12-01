//
//  main.swift
//  Baekjoon 2010
//
//  Created by 김기현 on 2020/12/01.
//


let N = Int(readLine()!)!
var arr = [Int]()
var sum = 0

for _ in 0..<N {
    let input = Int(readLine()!)!
    arr.append(input)
}

for i in 0..<arr.count - 1 {
    sum += arr[i]
    sum -= 1
}

print(sum + arr.last!)

