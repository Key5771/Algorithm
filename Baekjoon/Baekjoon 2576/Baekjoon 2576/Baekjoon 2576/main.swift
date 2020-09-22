//
//  main.swift
//  Baekjoon 2576
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

var array = [Int]()

for _ in 0..<7 {
    let input = Int(readLine()!)!
    
    if input % 2 == 1 {
        array.append(input)
    }
}

if array.isEmpty {
    print(-1)
} else {
    var sum = 0

    for i in 0..<array.count {
        sum += array[i]
    }
    
    print(sum)
    print(array.min()!)
}

