//
//  main.swift
//  Baekjoon 1181
//
//  Created by 김기현 on 2020/11/09.
//

let size = Int(readLine()!)!
var arr = [String]()

for _ in 0..<size {
    let input = readLine()!
    arr.append(input)
}

let sortArr = Array(Set(arr)).sorted { (lhs, rhs) -> Bool in
    if lhs.count == rhs.count {
        return lhs < rhs
    }
    
    return lhs.count < rhs.count
}

for i in 0..<sortArr.count {
    print(sortArr[i])
}
