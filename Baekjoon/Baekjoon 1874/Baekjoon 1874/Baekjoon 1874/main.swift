//
//  main.swift
//  Baekjoon 1874
//
//  Created by 김기현 on 2020/09/21.
//

import Foundation

let size = Int(readLine()!)!
var count = 1
var stack = [Int]()
var result = [String]()
var flag = true

for _ in 1..<size+1 {
    let data = Int(readLine()!)!
    while count <= data {
        stack.append(count)
        count += 1
        result.append("+")
    }
    
    if stack.last == data {
        stack.removeLast()
        result.append("-")
    } else {
        flag = false
    }
}

if flag {
    for str in result {
        print(str)
    }
} else {
    print("NO")
}
