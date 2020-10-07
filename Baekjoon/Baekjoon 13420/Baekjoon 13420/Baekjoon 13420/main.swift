//
//  main.swift
//  Baekjoon 13420
//
//  Created by 김기현 on 2020/10/07.
//

import Foundation

let size = Int(readLine()!)!
var array = [[String]]()

for _ in 0..<size {
    let input = readLine()!.split(separator: "=").map { String($0) }
    array.append(input)
}

for i in 0..<array.count {
    let oper = array[i][0].split(separator: " ").map { String($0) }
    let first = Int(oper[0])!
    let cal = oper[1]
    let second = Int(oper[2])!
    array[i][1].removeFirst()
    let result = Int(array[i][1])!
    
    var temp = 0
    if cal == "+" {
        temp = first + second
    } else if cal == "-" {
        temp = first - second
    } else if cal == "*" {
        temp = first * second
    } else if cal == "/" {
        temp = first / second
    }
    
    if temp == result {
        print("correct")
    } else {
        print("wrong answer")
    }
}
