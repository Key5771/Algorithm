//
//  main.swift
//  Longest palindrom
//
//  Created by 김기현 on 2020/11/03.
//

import Foundation

let s = "abcdcba"
let s2 = "abacde"

func solution(_ s: String) -> Int {
    var answer = 0
    let str = s.map { String($0) }
    
    for i in 0..<str.count {
        for j in stride(from: str.count - i, to: answer, by: -1) {
            var left = i
            var right = i + j - 1
            
            while left <= right, str[left] == str[right] {
                left += 1
                right -= 1
            }
            
            if left > right { answer = max(answer, j)}
        }
    }
    
    return answer
}

print(solution(s))
print(solution(s2))


