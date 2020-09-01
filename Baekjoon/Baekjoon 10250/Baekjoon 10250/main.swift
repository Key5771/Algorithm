//
//  main.swift
//  Baekjoon 10250
//
//  Created by 김기현 on 2020/09/01.
//  Copyright © 2020 김기현. All rights reserved.
//

import Foundation

let size = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

for i in 0..<arr.count {
    let height = arr[i][0]

    let floor = arr[i][2] % height
    let room = arr[i][2] / height

    if floor == 0 {
        if room < 10 {
            print("\(height)0\(room)")
        } else {
            print("\(height)\(room)")
        }
    } else {
        if room + 1 >= 10 {
            print("\(floor)\(room+1)")
        } else {
            print("\(floor)0\(room+1)")
        }
    }
}

