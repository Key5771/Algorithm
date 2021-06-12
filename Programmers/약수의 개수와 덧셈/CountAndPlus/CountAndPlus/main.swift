//
//  main.swift
//  CountAndPlus
//
//  Created by 김기현 on 2021/06/12.
//

import Foundation

let left = 13
let right = 17

let left2 = 24
let right2 = 27

func solution(_ left: Int, _ right: Int) -> Int {
    var sum = 0
    
    for element in left...right {
        var count = 0
        
        for i in 1...element {
            if element % i == 0 {
                count += 1
            }
        }
        
        count % 2 == 0 ? (sum += element) : (sum -= element)
    }
    
    return sum
}

print(solution(left, right))
print(solution(left2, right2))

