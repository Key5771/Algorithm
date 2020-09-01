//
//  main.swift
//  Baekjoon 1316
//
//  Created by 김기현 on 2020/09/01.
//  Copyright © 2020 김기현. All rights reserved.
//

import Foundation

let size = Int(readLine()!)!
var strArr = [String]()

for _ in 0..<size {
    let input = readLine()!
    strArr.append(input)
}

var result = [Character]()
var answer = 0

for i in 0..<strArr.count {
    for char in strArr[i] {
        if result.isEmpty {
            result.append(char)
        } else {
            if result.contains(char) && result.last! != char {
                break
            } else {
                result.append(char)
            }
        }
    }

    if result.count == strArr[i].count {
        answer += 1
    }

    result = []
}

print(answer)

