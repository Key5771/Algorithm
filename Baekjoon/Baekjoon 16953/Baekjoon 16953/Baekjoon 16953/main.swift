//
//  main.swift
//  Baekjoon 16953
//
//  Created by 김기현 on 2020/10/12.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let start = input[0]
var target = input[1]
var count = 0

while true {
    if start > target {
        print(-1)
        break
    }
    
    if start == target {
        print(count + 1)
        break
    }
    
    if target % 10 == 1 {
        target /= 10
    } else if target % 2 == 0 {
        target /= 2
    } else {
        print(-1)
        break
    }
    
    count += 1
}

