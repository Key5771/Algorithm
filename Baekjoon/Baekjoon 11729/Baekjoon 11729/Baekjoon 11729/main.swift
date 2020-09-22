//
//  main.swift
//  Baekjoon 11729
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let input = Int(readLine()!)!

func solution(_ n: Int) -> [[Int]] {
    var hanoiArr = [[Int]]()
    
    func hanoi(_ n: Int, _ from: Int, _ by: Int, _ to: Int) -> [[Int]] {
        if n == 1 {
            hanoiArr.append([from, to])
        } else {
            hanoi(n-1, from, to, by)
            hanoi(1, from, by, to)
            hanoi(n-1, by, from, to)
        }
        
        return hanoiArr
    }
    
    return hanoi(n, 1, 2, 3)
}

let answer = solution(input)

print(answer.count)
for i in 0..<answer.count {
    print("\(answer[i][0]) \(answer[i][1])")
}
