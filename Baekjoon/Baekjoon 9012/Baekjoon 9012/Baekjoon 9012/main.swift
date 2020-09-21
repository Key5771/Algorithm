//
//  main.swift
//  Baekjoon 9012
//
//  Created by 김기현 on 2020/09/21.
//

import Foundation

let size = Int(readLine()!)!

var array = [[String]]()

for _ in 0..<size {
    let input = readLine()!.map { String($0) }
    array.append(input)
}

for i in 0..<array.count {
    var stack = [String]()
    
    for element in array[i] {
        if element == "(" {
            stack.append(element)
        } else {
            if stack.last == "(" {
                stack.removeLast()
            } else {
                stack.append(element)
            }
        }
    }
    
    if stack.isEmpty {
        print("YES")
    } else {
        print("NO")
    }
}

