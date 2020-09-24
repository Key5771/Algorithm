//
//  main.swift
//  Practice 2
//
//  Created by 김기현 on 2020/09/24.
//

import Foundation

let id_list = ["A B C D", "A D", "A B D", "B D"]
let k = 2

let id_list2 = ["JAY", "JAY ELLE JAY MAY", "MAY ELLE MAY", "ELLE MAY", "ELLE ELLE ELLE", "MAY"]
let k2 = 3

func solution(_ id_list: [String], _ k: Int) -> Int {
    var answer = 0
    var dict = [String: Int]()
    
    for i in 0..<id_list.count {
        let arr = Array(Set(id_list[i].split(separator: " ").map { String($0) }))
        
        for j in 0..<arr.count {
            if dict[arr[j]] == nil {
                dict[arr[j]] = 1
            } else {
                dict[arr[j]]! += 1
            }
        }
    }
    
    for (_, value) in dict {
        if value >= k {
            answer += k
        } else {
            answer += value
        }
    }
    
    return answer
}

print(solution(id_list, k))
print(solution(id_list2, k2))
