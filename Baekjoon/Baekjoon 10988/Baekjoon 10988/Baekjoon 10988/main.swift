//
//  main.swift
//  Baekjoon 10988
//
//  Created by 김기현 on 2020/11/10.
//

var input = readLine()!.map { String($0) }
var flag = false

while !input.isEmpty {
    if input.count == 1 {
        flag = true
        break
    }
    
    let first = input.removeFirst()
    let last = input.removeLast()
    
    if first == last {
        flag = true
        continue
    } else {
        flag = false
        break
    }
}

if flag {
    print(1)
} else {
    print(0)
}

