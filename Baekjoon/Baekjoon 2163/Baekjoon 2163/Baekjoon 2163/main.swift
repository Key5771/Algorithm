//
//  main.swift
//  Baekjoon 2163
//
//  Created by 김기현 on 2020/11/13.
//

let size = readLine()!.split(separator: " ").map { Int($0)! }
let x = size[0]
let y = size[1]

func solution(_ x: Int, _ y: Int) -> Int {
    if x == y {
        return x * y - 1
    } else if x % 2 == 1 && y % 2 == 1 {
        if x > y {
            return x - 1
        } else {
            return y - 1
        }
    } else {
        return x * y - 1
    }
}

print(solution(x, y))

