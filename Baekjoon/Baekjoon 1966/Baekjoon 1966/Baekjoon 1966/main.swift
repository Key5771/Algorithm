//
//  main.swift
//  Baekjoon 1966
//
//  Created by 김기현 on 2020/10/08.
//

import Foundation

let size = Int(readLine()!)!
var answer = [Int]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0]
    let M = input[1]
    let tc = readLine()!.split(separator: " ").map { Int($0)! }
    
    var queue = [[Int]]()
    
    for element in tc {
        queue.append([element, 0])
    }
    
    queue[M][1] = 1
    
    var go_back = 0
    var order = 0
    
    while !queue.isEmpty {
        go_back = 0
        let c_value = queue.removeFirst()
        
        for v in queue {
            if c_value[0] < v[0] {
                queue.append(c_value)
                go_back = 1
                break
            }
        }
        
        if go_back == 0 {
            order += 1
            
            if c_value[1] == 1 {
                answer.append(order)
            }
        }
    }
}

for i in 0..<answer.count {
    print(answer[i])
}

