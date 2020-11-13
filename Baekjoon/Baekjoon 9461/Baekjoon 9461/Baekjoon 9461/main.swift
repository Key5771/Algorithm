//
//  main.swift
//  Baekjoon 9461
//
//  Created by 김기현 on 2020/11/13.
//

let size = Int(readLine()!)!

var arr = [Int](repeating: 0, count: 101)
arr[1] = 1
arr[2] = 1
arr[3] = 1

for i in 4..<101 {
    arr[i] = arr[i-3] + arr[i-2]
}

for _ in 0..<size {
    let input = Int(readLine()!)!
    print(arr[input])
}
