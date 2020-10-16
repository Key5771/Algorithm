//
//  main.swift
//  Baekjoon 1032
//
//  Created by 김기현 on 2020/10/16.
//

import Foundation

let size = Int(readLine()!)!
var arr = [String]()

for _ in 0..<size {
    let input = readLine()!
    arr.append(input)
}

var result = arr.removeFirst().map { String($0) }

for i in 0..<arr.count {
    let element = arr[i].map { String($0) }
    
    for j in 0..<element.count {
        if result[j] != element[j] {
            result[j] = "?"
        }
    }
}

print(result.joined())
