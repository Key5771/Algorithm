//
//  main.swift
//  FarNode
//
//  Created by 김기현 on 2020/11/02.
//

import Foundation

let n = 6
let vertex = [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]

func solution(_ n: Int, _ edge: [[Int]]) -> Int {
    var arr = Array(repeating: [Int](), count: n+1)
    edge.forEach {
        arr[$0[0]].append($0[1])
        arr[$0[1]].append($0[0])
    }
    
    func search() -> Int {
        var cost = Array(repeating: 11111111, count: n+1)
        cost[0] = 0
        cost[1] = 0
        
        var queue = [(Int, Int)]()
        queue.append((1, 0))
        
        while !queue.isEmpty {
            let first = queue.removeFirst()
            
            for next in arr[first.0] {
                let nextCost = first.1 + 1
                if cost[next] > nextCost {
                    cost[next] = nextCost
                    queue.append((next, nextCost))
                }
            }
        }
        
        let maxLength = cost.max()
        return cost.filter { $0 == maxLength }.count
    }
    
    return search()
}

print(solution(n, vertex))

