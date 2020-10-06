//
//  main.swift
//  Baekjoon 1427
//
//  Created by 김기현 on 2020/10/06.
//

import Foundation

let input = readLine()!.map { String($0) }
var arr = [Int]()

for str in input {
    arr.append(Int(str)!)
}

arr.sort { (lhs, rhs) -> Bool in
    return lhs > rhs
}

var answer = ""

for i in 0..<arr.count {
    answer += String(arr[i])
}

print(answer)
