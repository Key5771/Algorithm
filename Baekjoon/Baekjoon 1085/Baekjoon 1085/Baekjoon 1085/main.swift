//
//  main.swift
//  Baekjoon 1085
//
//  Created by 김기현 on 2020/10/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var x = input[0]
var y = input[1]
let w = input[2]
let h = input[3]

let array = [x, y, abs(w-x), abs(h-y)]
print(array.min()!)

