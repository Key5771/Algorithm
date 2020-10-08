//
//  main.swift
//  Baekjoon 1100
//
//  Created by 김기현 on 2020/10/08.
//

import Foundation

var arr = [[String]]()

for _ in 0..<8 {
    let input = readLine()!.map { String($0) }
    arr.append(input)
}

var origin = [[Int]](repeating: [Int](repeating: 0, count: 8), count: 8)
var index = 0

while index != 8 {
    for i in 0..<8 {
        if i != 0 {
            if origin[i-1][0] == 0 {
                origin[i][0] = 1
            }
        }
        
        for j in 1..<8 {
            if i == 0 && index == 0 {
                continue
            }
            
            if origin[i][j - 1] == 0 {
                origin[i][j] = 1
            }
        }
    }
    
    index += 1
}

var count = 0
for i in 0..<arr.count {
    for j in 0..<arr[i].count {
        if arr[i][j] == "." {
            continue
        }
        
        if arr[i][j] == "F" && origin[i][j] == 0 {
            count += 1
        }
    }
}

print(count)
