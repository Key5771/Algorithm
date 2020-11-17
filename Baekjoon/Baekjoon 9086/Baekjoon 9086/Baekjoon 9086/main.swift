//
//  main.swift
//  Baekjoon 9086
//
//  Created by 김기현 on 2020/11/17.
//


let size = Int(readLine()!)!
var arr = [String]()
for _ in 0..<size {
    var str = ""
    let input = readLine()!.map { String($0) }
    
    if input.count == 1 {
        str += input.first!
        str += input.first!
    } else {
        str += input.first!
        str += input.last!
    }
    
    arr.append(str)
}

for i in 0..<arr.count {
    print(arr[i])
}

