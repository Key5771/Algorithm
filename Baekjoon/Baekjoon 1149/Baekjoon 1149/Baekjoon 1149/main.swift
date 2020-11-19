//
//  main.swift
//  Baekjoon 1149
//
//  Created by 김기현 on 2020/11/19.
//


let size = Int(readLine()!)!

var arr = [[Int]](repeating: [Int](repeating: 0, count: 3), count: size + 1)
var dp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: size + 1)

for i in 1..<size + 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<3 {
        arr[i][j] = input[j]
    }
}

for i in 1..<size + 1 {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + arr[i][0]
    dp[i][1] = min(dp[i-1][2], dp[i-1][0]) + arr[i][1]
    dp[i][2] = min(dp[i-1][1], dp[i-1][0]) + arr[i][2]
}

print(min(dp[size][0], dp[size][1], dp[size][2]))

