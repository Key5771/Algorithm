//
//  main.swift
//  Baekjoon 1934
//
//  Created by 김기현 on 2020/11/13.
//

let size = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<size {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    arr.append(input)
}

func gcd(_ min: Int, _ max: Int) -> Int {
    let remain = min % max
    
    if remain == 0 {
        return max
    } else {
        return gcd(max, remain)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

for i in 0..<arr.count {
    let min = arr[i][0]
    let max = arr[i][1]
    
    print(lcm(min, max))
}

