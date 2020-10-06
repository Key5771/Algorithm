//
//  main.swift
//  Baekjoon 10866
//
//  Created by 김기현 on 2020/10/06.
//

import Foundation

let size = Int(readLine()!)!
var operation = [[String]]()
var arr = [Int]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input.count == 1 {
        operation.append([input[0]])
    } else {
        let oper = input[0]
        let num = input[1]
        
        operation.append([oper, num])
    }
}

for i in 0..<operation.count {
    if operation[i].count == 1 {
        let oper = operation[i][0]
        
        if oper == "size" {
            print(arr.count)
        } else if oper == "empty" {
            if arr.isEmpty {
                print(1)
            } else {
                print(0)
            }
        } else if oper == "front" {
            if arr.isEmpty {
                print(-1)
            } else {
                print(arr.first!)
            }
        } else if oper == "back" {
            if arr.isEmpty {
                print(-1)
            } else {
                print(arr.last!)
            }
        } else if oper == "pop_front" {
            if arr.isEmpty {
                print(-1)
            } else {
                let element = arr.removeFirst()
                print(element)
            }
        } else if oper == "pop_back" {
            if arr.isEmpty {
                print(-1)
            } else {
                let element = arr.removeLast()
                print(element)
            }
        }
    } else {
        let oper = operation[i][0]
        let num = Int(operation[i][1])!
        
        if oper == "push_front" {
            arr.insert(num, at: 0)
        } else if oper == "push_back" {
            arr.append(num)
        }
    }
}
