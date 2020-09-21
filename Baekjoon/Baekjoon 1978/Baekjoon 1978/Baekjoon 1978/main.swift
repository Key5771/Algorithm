//
//  main.swift
//  Baekjoon 1978
//
//  Created by 김기현 on 2020/09/21.
//

import Foundation

let size = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0

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

for i in 0..<input.count {
    if isPrime(input[i]) {
        count += 1
    }
}

print(count)
