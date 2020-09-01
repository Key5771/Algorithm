//
//  main.swift
//  Baekjoon 2869
//
//  Created by 김기현 on 2020/09/01.
//  Copyright © 2020 김기현. All rights reserved.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var day = (input[2] - input[1]) / (input[0] - input[1])

if (input[2] - input[1]) % (input[0] - input[1]) != 0 {
    print(day + 1)
} else {
    print(day)
}
