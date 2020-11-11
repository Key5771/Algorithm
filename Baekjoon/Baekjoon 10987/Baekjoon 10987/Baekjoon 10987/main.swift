//
//  main.swift
//  Baekjoon 10987
//
//  Created by 김기현 on 2020/11/11.
//

let str = readLine()!.map { String($0) }
var arr = ["a", "e", "i", "o", "u"]
var count = 0
for i in 0..<str.count {
    if arr.contains(str[i]) {
        count += 1
    }
}
print(count)

