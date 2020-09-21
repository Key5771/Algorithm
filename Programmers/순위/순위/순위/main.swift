//
//  main.swift
//  순위
//
//  Created by 김기현 on 2020/09/21.
//

let n = 5
let results = [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]

import Foundation

func solution(_ n: Int, _ results: [[Int]]) -> Int {
    var answer = 0
    var graph = [[Bool]](repeating: [Bool](repeating: false, count: n+1), count: n+1)
    
    for r in results {
        graph[r[0]][r[1]] = true
    }
    
    for i in 1...n {
        for j in 1...n {
            for k in 1...n {
                if graph[j][i] && graph[i][k] {
                    graph[j][k] = true
                }
            }
        }
    }
    
    for i in 1...n {
        var count = 0
        for j in 1...n {
            if graph[i][j] || graph[j][i] {
                count += 1
            }
        }
        
        if count == n - 1 {
            answer += 1
        }
    }
    
    return answer
}

print(solution(n, results))
