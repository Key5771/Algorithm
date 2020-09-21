//
//  main.swift
//  여행경로
//
//  Created by 김기현 on 2020/09/21.
//

let tickets = [["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]]
let tickets2 = [["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL", "SFO"]]

import Foundation

func solution(_ tickets: [[String]]) -> [String] {
    var answer = [String]()
    var path = [String]()
    var visited = [Bool](repeating: false, count: tickets.count)
    let arr = tickets.sorted(by: { $0[1] < $1[1] })
    
    func dfs(_ depth: Int,
             _ airport: String,
             _ ticket: [[String]],
             _ answer: inout [String],
             _ visited: inout [Bool],
             _ path: inout [String]) {
        path.append(airport)
        
        if depth == ticket.count {
            answer = path
            return
        }
        
        for i in 0..<ticket.count where answer.isEmpty {
            let info = (ticket[i].first!, ticket[i].last!)
            
            if visited[i] == false && airport == info.0 {
                visited[i] = true
                dfs(depth+1, info.1, ticket, &answer, &visited, &path)
                visited[i] = false
            }
        }
        
        path.removeLast()
    }
    
    dfs(0, "ICN", arr, &answer, &visited, &path)
    
    return answer
}

print(solution(tickets))
print(solution(tickets2))
