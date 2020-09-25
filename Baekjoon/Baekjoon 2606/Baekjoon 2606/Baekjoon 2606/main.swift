//
//  main.swift
//  Baekjoon 2606
//
//  Created by 김기현 on 2020/09/25.
//

import Foundation

let computer = Int(readLine()!)!
let connectCount = Int(readLine()!)!

var connect = [Int: [Int]]()

for num in 1...computer {
    connect[num] = []
}

for _ in 0..<connectCount {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    connect[temp[0]]?.append(temp[1])
    connect[temp[1]]?.append(temp[0])
}

var visited: [Int] = []
var stack: [Int] = [1]

while !stack.isEmpty {
    guard let temp = stack.popLast() else { break }
    if !visited.contains(temp) {
        visited.append(temp)
        guard let temp2 = connect[temp] else { break }
        stack += temp2
    }
}

print(visited.count - 1)

