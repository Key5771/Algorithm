//
//  main.swift
//  Baekjoon 2530
//
//  Created by 김기현 on 2020/11/13.
//

let start = readLine()!.split(separator: " ").map { Int($0)! }
var hour = start[0]
var min = start[1]
var sec = start[2]

var time = Int(readLine()!)!
sec += time

while sec > 59 {
    sec -= 60
    min += 1
    
    if min > 59 {
        hour += 1
        min = 0
    }
    
    if hour > 23 {
        hour = 0
    }
}

print("\(hour) \(min) \(sec)")
