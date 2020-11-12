//
//  main.swift
//  Baekjoon 11931
//
//  Created by 김기현 on 2020/11/12.
//

let size = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<size {
    let input = Int(readLine()!)!
    arr.append(input)
}

arr.sort(by: >)

for i in 0..<arr.count {
    print(arr[i])
}

