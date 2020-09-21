//
//  main.swift
//  Baekjoon 2581
//
//  Created by 김기현 on 2020/09/21.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    if n == 1 {
        return false
    }
    
    if n <= 3 {
        return true
    }
    
    var i = 2
    while i * i <= n {
        if n % i == 0 {
            return false
        }
        
        i += 1
    }
    
    return true
}

let min = Int(readLine()!)!
let max = Int(readLine()!)!

var arr = [Int]()

for i in min...max {
    if isPrime(i) {
        arr.append(i)
    }
}

if arr.isEmpty {
    print(-1)
} else {
    var sum = 0
    for element in arr {
        sum += element
    }
    
    print(sum)
    print(arr.min()!)
}


