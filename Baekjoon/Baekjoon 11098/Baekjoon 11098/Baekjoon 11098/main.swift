//
//  main.swift
//  Baekjoon 11098
//
//  Created by 김기현 on 2020/11/17.
//

let size = Int(readLine()!)!

for _ in 0..<size {
    let num = Int(readLine()!)!
    var arr = [(Int, String)]()
    for _ in 0..<num {
        let input = readLine()!.split(separator: " ").map { String($0) }
        arr.append((Int(input[0])!, input[1]))
    }
    
    arr.sort { (lhs, rhs) -> Bool in
        return lhs.0 > rhs.0
    }
    
    print(arr[0].1)
}
