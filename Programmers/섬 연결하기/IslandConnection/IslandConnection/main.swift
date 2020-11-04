//
//  main.swift
//  IslandConnection
//
//  Created by 김기현 on 2020/11/04.
//

import Foundation

let n = 4
let costs = [[0,1,1],[0,2,2],[1,2,5],[1,3,1],[2,3,8]]

let n2 = 4
let costs2 = [[0, 1, 5], [1, 2, 3], [2, 3, 3], [3, 1, 2], [3, 0, 4]]

func solution(_ n: Int, _ costs: [[Int]]) -> Int {
    var costs = costs.sorted { (lhs, rhs) -> Bool in
        return lhs[2] < rhs[2]
    }
    
    var connect = [costs[0][0]]
    var answer = 0
    
    while connect.count != n {
        var temp = Int.max
        var index = 0
        
        for i in 0..<costs.count {
            if connect.contains(costs[i][0]) || connect.contains(costs[i][1]) {
                if connect.contains(costs[i][0]) && connect.contains(costs[i][1]) {
                    continue
                }
                
                if temp > costs[i][2] {
                    temp = costs[i][2]
                    index += i
                }
            }
        }
        
        answer += temp
        connect.append(costs[index][0])
        connect.append(costs[index][1])
        connect = Array(Set(connect))
        costs.remove(at: index)
    }
    
    return answer
}

print(solution(n, costs))
print(solution(n2, costs2))
