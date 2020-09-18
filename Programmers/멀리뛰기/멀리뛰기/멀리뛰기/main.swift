//
//  main.swift
//  멀리뛰기
//
//  Created by 김기현 on 2020/09/18.
//

let n = 4
let n2 = 3

func solution(_ n: Int) -> Int64 {
    var a = 1
    var b = 1
    var temp = 0
    
    if n <= 2 {
        return Int64(2)
    }
    
    for _ in 1..<n {
        temp = a + b
        a = b
        b = temp % 1234567
    }
    
    return Int64(b)
}

print(solution(n))
print(solution(n2))
