//
//  main.swift
//  Make Prime Number
//
//  Created by 김기현 on 2020/09/17.
//  Copyright © 2020 김기현. All rights reserved.
//

let nums = [1, 2, 3, 4]
let nums2 = [1, 2, 7, 6, 4]

import Foundation

func isPrime(_ n: Int) -> Bool {
    if n == 1 {
        return false
    }
    
    if n <= 3 {
        return true
    }
    
    var i = 2
    
    while i*i <= n {
        if n % i == 0 {
            return false
        }
        
        i += 1
    }
    
    return true
}

func solution(_ nums: [Int]) -> Int {
    var answer = 0
    var arr = [Int]()
    
    for i in 0..<nums.count {
        for j in i + 1..<nums.count {
            for k in j + 1..<nums.count {
                arr.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    for i in 0..<arr.count {
        if isPrime(arr[i]) { answer += 1 }
    }
    
    return answer
}

print(solution(nums))
print(solution(nums2))
