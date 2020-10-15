//
//  main.swift
//  Baekjoon 2747
//
//  Created by 김기현 on 2020/10/15.
//

import Foundation

let n1 = 0
let n2 = 1

let input = Int(readLine()!)!
var arr = [Int]()

for i in 0...input {
    if i == 0 {
        arr.append(n1)
        continue
    } else if i == 1 {
        arr.append(n2)
        continue
    }
    
    var element = 0
    element = arr[i-2] + arr[i-1]
    
    arr.append(element)
}

print(arr[input])
