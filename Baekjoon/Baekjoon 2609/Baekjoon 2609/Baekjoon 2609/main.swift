//
//  main.swift
//  Baekjoon 2609
//
//  Created by 김기현 on 2020/11/10.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }

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

print(gcd(input.min()!, input.max()!))
print(lcm(input.min()!, input.max()!))

