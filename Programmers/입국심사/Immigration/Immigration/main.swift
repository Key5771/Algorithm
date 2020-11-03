//
//  main.swift
//  Immigration
//
//  Created by 김기현 on 2020/11/03.
//

import Foundation

let n = 6
let times = [7, 10]

func solution(_ n: Int, _ times: [Int]) -> Int64 {
    let length = times.count
    let time: [Int64] = times.map{ Int64($0) }.sorted { (lhs, rhs) -> Bool in
        return lhs < rhs
    }
    
    var min = Int64(1)
    var max = Int64(times[length - 1] * n)
    var answer: Int64 = max
    
    while min <= max {
        let mid = (min + max) / 2
        var sum: Int64 = 0
        
        for i in 0..<length {
            sum += mid / time[i]
        }
        
        if n > sum {
            min = mid + 1
        } else {
            if mid <= answer {
                answer = mid
            }
            
            max = mid - 1
        }
    }
    
    return answer
}

print(solution(n, times))
