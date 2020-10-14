//
//  main.swift
//  Baekjoon 12605
//
//  Created by 김기현 on 2020/10/14.
//

import Foundation

let size = Int(readLine()!)!
var strArr = [[String]]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { String($0) }
    strArr.append(input)
}

for i in 0..<strArr.count {
    var str = ""
    for j in (0..<strArr[i].count).reversed() {
        str += strArr[i][j]
        str += " "
    }
    
    str.removeLast()
    
    print("Case #\(i+1): \(str)")
}

