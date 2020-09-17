//
//  main.swift
//  Big Number
//
//  Created by 김기현 on 2020/09/17.
//  Copyright © 2020 김기현. All rights reserved.
//

let number = "1924"
let k = 2

let number2 = "1231234"
let k2 = 3

let number3 = "4177252841"
let k3 = 4

import Foundation

func solution(_ number: String, _ k: Int) -> String {
    let map = number.map { String($0) }
    var stack = [String]()
    var count = 0
    
    for i in 0..<number.count {
        while count < k && !stack.isEmpty && stack.last! < map[i] {
            stack.removeLast()
            count += 1
        }
        
        if count >= k {
            stack.append(contentsOf: map[i...])
            break
        } else {
            stack.append(map[i])
        }
    }
    
    return String(stack.joined().prefix(number.count - k))
}

print(solution(number, k))
print(solution(number2, k2))
print(solution(number3, k3))

