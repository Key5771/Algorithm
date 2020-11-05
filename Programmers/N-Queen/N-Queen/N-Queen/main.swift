//
//  main.swift
//  N-Queen
//
//  Created by 김기현 on 2020/11/05.
//

let n = 4

import Foundation

var answer = 0
var arr: [Int] = []

func backTracking(_ max: Int, _ row: Int) {
    if row == max {
        answer += 1
        arr[row - 1] = 0
        return
    }
    
    for i in 0..<max {
        arr[row] = i
        if isPossible(row) {
            backTracking(max, row + 1)
        } else {
            arr[row] = 0
        }
    }
    
    arr[row] = 0
}

func isPossible(_ row: Int) -> Bool {
    for i in 0..<row {
        if arr[i] == arr[row] {
            return false
        }
        
        if abs(row - i) == abs(arr[row] - arr[i]) {
            return false
        }
    }
    
    return true
}

func solution(_ n: Int) -> Int {
    
    for _ in 0..<n {
        arr.append(0)
    }
    
    for i in 0..<n {
        arr[0] = i
        backTracking(n, 1)
    }
    
    return answer
}

print(solution(n))
