//
//  main.swift
//  SteppingStone
//
//  Created by 김기현 on 2020/11/04.
//

let distance = 25
let rocks = [2, 14, 11, 21, 17]
let n = 2

import Foundation

func solution(_ distance: Int, _ rocks: [Int], _ n: Int) -> Int {
    var answer = 0
    let rocks = rocks.sorted()
    
    var left = 0
    var right = distance
    var mid = 0
    
    while left <= right {
        var count = 0
        var prev = 0
        mid = (left + right) / 2
        
        for i in 0..<rocks.count {
            if rocks[i] - prev < mid {
                count += 1
            } else {
                prev = rocks[i]
            }
        }
        
        if distance - prev < mid {
            count += 1
        }
        
        if count <= n {
            answer = mid > answer ? mid : answer
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return answer
}

print(solution(distance, rocks, n))
