//
//  main.swift
//  Baekjoon 2525
//
//  Created by 김기현 on 2020/11/13.
//

let start = readLine()!.split(separator: " ").map { Int($0)! }
var hour = start[0]
var min = start[1]
let time = Int(readLine()!)!

min += time

while min > 59 {
    min -= 60
    hour += 1
    
    if hour > 23 {
        hour = 0
    }
}

print("\(hour) \(min)")
