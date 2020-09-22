//
//  main.swift
//  Baekjoon 10773
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let size = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<size {
    let input = Int(readLine()!)!
    
    if input != 0 {
        arr.append(input)
    } else {
        arr.removeLast()
    }
}

var sum = 0

for element in arr {
    sum += element
}

print(sum)
