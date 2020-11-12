//
//  main.swift
//  Baekjoon 11651
//
//  Created by 김기현 on 2020/11/12.
//

let size = Int(readLine()!)!
var arr = [(Int, Int)]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0], input[1]))
}

let sortArr = arr.sorted { (lhs, rhs) -> Bool in
    if lhs.1 == rhs.1 {
        return lhs.0 < rhs.0
    }
    
    return lhs.1 < rhs.1
}

for i in 0..<sortArr.count {
    print("\(sortArr[i].0) \(sortArr[i].1)")
}

