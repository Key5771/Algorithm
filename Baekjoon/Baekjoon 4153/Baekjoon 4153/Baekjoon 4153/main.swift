//
//  main.swift
//  Baekjoon 4153
//
//  Created by 김기현 on 2020/11/13.
//

while let input = readLine() {
    let length = input.split(separator: " ").map { Int($0)! }.sorted()
    let point1 = length[0] * length[0]
    let point2 = length[1] * length[1]
    let point3 = length[2] * length[2]
    
    if point1 == 0 && point2 == 0 && point3 == 0 { break }
    
    if point1 + point2 == point3 {
        print("right")
    } else {
        print("wrong")
    }
}

