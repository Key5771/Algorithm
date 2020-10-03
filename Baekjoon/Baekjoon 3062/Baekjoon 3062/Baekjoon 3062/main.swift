//
//  main.swift
//  Baekjoon 3062
//
//  Created by 김기현 on 2020/10/03.
//

import Foundation

let size = Int(readLine()!)!
var arr = [String]()
var arr2 = [String]()

for _ in 0..<size {
    let input = readLine()!
    arr.append(input)
}

for i in 0..<arr.count {
    var temp = ""
    for s in arr[i].reversed() {
        temp += String(s)
    }
    
    arr2.append(temp)
}

for i in 0..<arr.count {
    var check = true
    let result = String(Int(arr[i])! + Int(arr2[i])!).map { String($0) }
    let length = result.count
    
    for i in 0..<length / 2 {
        if result[i] != result[length - 1 - i] {
            check = false
        }
    }
    
    if check {
        print("YES")
    } else {
        print("NO")
    }
}

