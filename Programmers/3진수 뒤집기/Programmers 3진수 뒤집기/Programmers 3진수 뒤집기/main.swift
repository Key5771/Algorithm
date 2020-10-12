//
//  main.swift
//  Programmers 3진수 뒤집기
//
//  Created by 김기현 on 2020/10/12.
//

import Foundation

let n = 45
let n2 = 125

func solution(_ n: Int) -> Int {
    var num = n
    var array = [Int]()
    while num >= 3 {
        let divideNum = num % 3
        array.append(divideNum)
        
        num /= 3
    }
    
    if num != 0 {
        array.append(num)
    }
    
    var count = 1
    var answer = 0
    
    while !array.isEmpty {
        let element = array.removeLast()
        var mul = 1
        
        for _ in 0..<count - 1 {
            if count == 1 {
                break
            }
            
            mul *= 3
        }
        
        answer += element * mul
        count += 1
    }
    
    return answer
}

print(solution(n))
print(solution(n2))

