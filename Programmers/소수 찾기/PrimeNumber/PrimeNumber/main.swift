//
//  main.swift
//  PrimeNumber
//
//  Created by 김기현 on 2020/09/17.
//  Copyright © 2020 김기현. All rights reserved.
//

let numbers = "17"
let numbers2 = "011"

import Foundation

func solution(_ numbers: String) -> Int {
    var answer = 0
    let map = numbers.compactMap { String($0) }
    var dict = [String: Int]()
    var arr = [String]()
    var set: Set<Int> = []
    
    for element in map {
        set.insert(Int(element)!)
        
        if arr.contains(element) {
            dict[element]! += 1
            continue
        }
        
        dict[element] = 1
        arr.append(element)
    }
    
    var array = [[String]](repeating: [String](), count: numbers.count)
    array[0] = map
    
    if numbers.count > 1 {
        for i in 1...numbers.count - 1 {
            for j in 0..<array[i-1].count {
                for k in 0..<numbers.count {
                    let a = "\(map[k])\(array[i-1][j])"
                    if a.map({ String($0) }).filter({ $0 == map[k] }).count <= dict[map[k]]! {
                        array[i].append(a)
                        set.insert(Int(a)!)
                    }
                }
            }
        }
    }
    
    for n in set {
        var count = 0
        if n == 1 || n == 0 {
            continue
        }
        
        for i in 2...n {
            if n % i == 0 {
                count += 1
                if count > 1 { break }
            }
        }
        
        if count == 1 {
            answer += 1
        }
    }
    
    return answer
}

print(solution(numbers))
print(solution(numbers2))


