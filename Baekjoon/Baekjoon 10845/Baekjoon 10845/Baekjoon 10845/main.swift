//
//  main.swift
//  Baekjoon 10845
//
//  Created by 김기현 on 2020/09/25.
//

import Foundation

let size = Int(readLine()!)!
var arr = [[String]]()
var queue = [Int]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    arr.append(input)
}

for i in 0..<arr.count {
    let oper = arr[i][0]
    
    if oper == "push" {
        queue.append(Int(arr[i][1])!)
    } else if oper == "pop" {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.removeFirst())
        }
    } else if oper == "size" {
        print(queue.count)
    } else if oper == "empty" {
        if queue.isEmpty {
            print(1)
        } else {
            print(0)
        }
    } else if oper == "front" {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.first!)
        }
    } else if oper == "back" {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.last!)
        }
    }
}

