//
//  main.swift
//  Binary Transport
//
//  Created by 김기현 on 2020/11/10.
//

let s = "110010101001"
let s2 = "01110"
let s3 = "1111111"

import Foundation

func solution(_ s: String) -> [Int] {
    var arr = s.map { String($0) }
    var zeroCount = 0
    var count = 0
    
    while arr != ["1"] {
        var t = 0
        count += 1
        
        for i in 0..<arr.count {
            if arr[i] == "0" {
                t += 1
            }
        }
        
        zeroCount += t
        let num = arr.count - t
        let str = String(num, radix: 2)
        arr = str.map { String($0) }
    }
    
    return [count, zeroCount]
}

print(solution(s))
print(solution(s2))
print(solution(s3))


