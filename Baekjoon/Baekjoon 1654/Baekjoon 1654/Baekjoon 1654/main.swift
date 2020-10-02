//
//  main.swift
//  Baekjoon 1654
//
//  Created by 김기현 on 2020/10/02.
//

import Foundation

var lowValue = 1
var highValue = 0

let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0]
let n = input[1]

var size = [Int]()
var result = 0

for _ in 0..<k {
    let length = Int(readLine()!)!
    size.append(length)
    highValue = max(highValue, length)
}

func check(_ middle: Int) -> Bool {
    var count = 0
    
    for i in 0..<k {
        count += size[i] / middle
    }
    
    if count >= n {
        return true
    }
    
    return false
}

while lowValue <= highValue {
    let mid = (lowValue + highValue) / 2
    
    if check(mid) {
        if result < mid {
            result = mid
        }
        
        lowValue = mid + 1
    } else {
        highValue = mid - 1
    }
}

print(result)
