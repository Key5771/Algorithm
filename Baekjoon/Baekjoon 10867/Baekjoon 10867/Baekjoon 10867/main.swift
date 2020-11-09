//
//  main.swift
//  Baekjoon 10867
//
//  Created by 김기현 on 2020/11/09.
//

let size = readLine()!
let input = Array(Set(readLine()!.split(separator: " ").map { Int($0)! })).sorted(by: <)

var str = ""
for i in 0..<input.count {
    str += String(input[i])
    str += " "
}

str.removeLast()
print(str)
