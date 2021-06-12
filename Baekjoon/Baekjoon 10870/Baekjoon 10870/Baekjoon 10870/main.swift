//
//  main.swift
//  Baekjoon 10870
//
//  Created by 김기현 on 2021/06/12.
//

import Foundation

guard let input = readLine(),
      let num = Int(input) else { fatalError("Input is nil") }

func fibonacci(_ num: Int) -> Int {
    if num == 0 { return 0 }
    if num == 1 { return 1 }
    
    return fibonacci(num - 2) + fibonacci(num - 1)
}

print(fibonacci(num))
