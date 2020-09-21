//
//  main.swift
//  Baekjoon 1929
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

let input = readLine()!.split(separator: " ").map { Int($0)! }
let start = input[0]
let end = input[1]

for i in start...end {
    if isPrime(i) {
        print(i)
    }
}
