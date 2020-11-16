//
//  main.swift
//  Baekjoon 10798
//
//  Created by 김기현 on 2020/11/16.
//

var arr = [[String]]()
for _ in 0..<5 {
    let input = readLine()!.map { String($0) }
    arr.append(input)
}

var str = ""
for i in 0..<15 {
    for j in 0..<5 {
        if i < arr[j].count {
            str += arr[j][i]
        }
    }
}

print(str)
