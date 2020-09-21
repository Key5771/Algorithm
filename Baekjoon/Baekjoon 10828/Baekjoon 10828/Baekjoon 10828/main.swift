//
//  main.swift
//  Baekjoon 10828
//
//  Created by 김기현 on 2020/09/21.
//

import Foundation

let size = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    if input[0] == "push" {
        stack.append(Int(input[1])!)
    } else if input[0] == "pop" {
        if stack.isEmpty {
            print(-1)
        } else {
            let last = stack.removeLast()
            print(last)
        }
    } else if input[0] == "size" {
        print(stack.count)
    } else if input[0] == "empty" {
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
    } else if input[0] == "top" {
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.last!)
        }
    }
}

