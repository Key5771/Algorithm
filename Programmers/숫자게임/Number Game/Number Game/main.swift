//
//  main.swift
//  Number Game
//
//  Created by 김기현 on 2020/09/17.
//  Copyright © 2020 김기현. All rights reserved.
//

let a = [5, 1, 3, 7]
let b = [2, 2, 6, 8]

let a2 = [2, 2, 2, 2]
let b2 = [1, 1, 1, 1]

import Foundation

func solution(_ a: [Int], _ b: [Int]) -> Int {
    var point = 0
    let teamA = a.sorted { (lhs, rhs) -> Bool in
        return lhs > rhs
    }
    let teamB = b.sorted { (lhs, rhs) -> Bool in
        return lhs > rhs
    }
    
    var a_index = 0
    var b_index = 0
    
    if a.min()! >= b.max()! {
        return 0
    }
    
    for _ in 0..<teamA.count {
        if teamA[a_index] < teamB[b_index] {
            b_index += 1
            point += 1
        }
        
        a_index += 1
    }
    
    return point
}

print(solution(a, b))
print(solution(a2, b2))


