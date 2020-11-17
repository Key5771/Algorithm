//
//  main.swift
//  Baekjoon 11816
//
//  Created by 김기현 on 2020/11/17.
//


let hex = ["a": 10, "b": 11, "c": 12, "d": 13, "e": 14, "f": 15]

var input = readLine()!.map { String($0) }

func solution(_ input: [String]) -> Int {
    var input = input
    var isHex = false
    
    if input.first! != "0" {
        return Int(input.joined())!
    } else {
        input.removeFirst()
        if input.first! == "x" {
            input.removeFirst()
            isHex = true
        } else {
            isHex = false
        }
    }
    
    var count = 1
    var answer = 0
    for i in (0..<input.count).reversed() {
        if !isHex {
            answer += Int(input[i])! * count
            count *= 8
        } else {
            let element = input[i]
            if Int(element) == nil {
                answer += hex[element]! * count
                count *= 16
            } else {
                answer += Int(element)! * count
                count *= 16
            }
        }
    }
    
    return answer
}

print(solution(input))
