//
//  main.swift
//  Baekjoon 15953
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let size = Int(readLine()!)!
var answer = [Int]()

var array = [[Int]]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    array.append(input)
}

for i in 0..<array.count {
    var result = 0
    let first = array[i][0]
    let second = array[i][1]
    
    if first == 1 {
        result += 5000000
    } else if 2 <= first && first <= 3 {
        result += 3000000
    } else if 4 <= first && first <= 6 {
        result += 2000000
    } else if 7 <= first && first <= 10 {
        result += 500000
    } else if 11 <= first && first <= 15 {
        result += 300000
    } else if 16 <= first && first <= 21 {
        result += 100000
    }
    
    if second == 1 {
        result += 5120000
    } else if 2 <= second && second <= 3 {
        result += 2560000
    } else if 4 <= second && second <= 7 {
        result += 1280000
    } else if 8 <= second && second <= 15 {
        result += 640000
    } else if 16 <= second && second <= 31 {
        result += 320000
    }
    
    answer.append(result)
}

for i in 0..<answer.count {
    print(answer[i])
}
