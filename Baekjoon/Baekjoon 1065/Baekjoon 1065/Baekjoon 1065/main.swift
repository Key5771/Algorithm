//
//  main.swift
//  Baekjoon 1065
//
//  Created by 김기현 on 2020/11/18.
//

let number = Int(readLine()!)!

func solution(_ num: Int) -> Int {
    if num < 10 { return num }
    
    var count = 0
    
    for i in 10...num {
        var check = true
        let arr = String(i).map { String($0) }.map { Int($0)! }
        var a = 0
        for j in 1..<arr.count {
            let temp = arr[j] - arr[j-1]
            if j == 1 {
                a = temp
                continue
            }
            
            if a != temp {
                check = false
                break
            }
        }
        
        if check {
            count += 1
        }
    }
    
    return count + 9
}

print(solution(number))

