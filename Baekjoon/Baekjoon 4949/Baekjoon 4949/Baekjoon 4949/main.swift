//
//  main.swift
//  Baekjoon 4949
//
//  Created by 김기현 on 2020/09/22.
//

import Foundation

var array = [[String]]()

while true {
    let input = readLine()!
    
    if input == "." { break }
    
    let str = input.map { String($0) }
    
    array.append(str)
}

for i in 0..<array.count {
    var arr = [String]()
    
    for element in array[i] {
        if element.contains("(") {
            arr.append("(")
        } else if element.contains("[") {
            arr.append("[")
        } else if element.contains(")") {
            if arr.last == "(" {
                arr.removeLast()
            } else {
                arr.append(")")
            }
        } else if element.contains("]") {
            if arr.last == "[" {
                arr.removeLast()
            } else {
                arr.append("]")
            }
        }
    }
    
    if arr.isEmpty {
        print("yes")
    } else {
        print("no")
    }
}
