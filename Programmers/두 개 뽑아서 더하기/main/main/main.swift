//
//  main.swift
//  main
//
//  Created by 김기현 on 2020/09/22.
//

let numbers = [2, 1, 3, 4, 1]
let numbers2 = [5, 0, 2, 7]

import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var ans = [Int]()
    for i in 0..<numbers.count {
        for j in i..<numbers.count {
            if i == j { continue }
            let sum = numbers[i] + numbers[j]
            ans.append(sum)
        }
    }
    
    ans = Array(Set(ans))
    ans.sort()
    
    return ans
}

print(solution(numbers))
print(solution(numbers2))

