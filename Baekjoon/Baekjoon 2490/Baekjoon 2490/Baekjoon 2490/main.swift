//
//  main.swift
//  Baekjoon 2490
//
//  Created by 김기현 on 2020/11/16.
//

var arr = [[Int]]()
for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

for i in 0..<arr.count {
    var oneCount = 0
    for j in 0..<arr[i].count {
        if arr[i][j] == 1 {
            oneCount += 1
        }
    }
    
    if oneCount == 0 {
        print("D")
    } else if oneCount == 1 {
        print("C")
    } else if oneCount == 2 {
        print("B")
    } else if oneCount == 3 {
        print("A")
    } else {
        print("E")
    }
}

