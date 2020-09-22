//
//  main.swift
//  Baekjoon 2504
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

let input = readLine()!.map { String($0) }
var stack = [String]()
var temp = 0
var result = 0
var mul = 1

for i in 0..<input.count {
    switch input[i] {
    case "(":
        stack.append(input[i])
        mul *= 2
        break
    case "[":
        stack.append(input[i])
        mul *= 3
        break
    case ")":
        if stack.isEmpty || stack.last != "(" {
            result = 0
            break
        }
        
        if input[i - 1] == "(" {
            result += mul
        }
        
        stack.removeLast()
        mul /= 2
        break
    case "]":
        if stack.isEmpty || stack.last != "[" {
            result = 0
            break
        }
        
        if input[i - 1] == "[" {
            result += mul
        }
        
        stack.removeLast()
        mul /= 3
        break
    default:
        break
    }
}

if stack.isEmpty {
    print(result)
} else {
    print(0)
}
