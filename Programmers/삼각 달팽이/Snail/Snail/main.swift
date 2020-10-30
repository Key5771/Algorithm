//
//  main.swift
//  Snail
//
//  Created by 김기현 on 2020/10/30.
//

import Foundation

let n = 4
let n2 = 5
let n3 = 6

func getMax(_ n: Int) -> Int {
    return n == 1 ? 1 : getMax(n - 1) + n
}

func solution(_ n: Int) -> [Int] {
    let N = getMax(n)
    var answer = [Int](repeating: 0, count: N)
    var arr = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        for j in 0...i {
            arr[i][j] = -1
        }
    }
    
    var num = 2
    var i = 0
    var j = 0
    arr[i][j] = 1
    
    OUTERLOOP: while num <= N {
        while true {
            if i + 1 >= n || arr[i+1][j] != -1 { break }
            arr[i+1][j] = num
            i += 1
            num += 1
            
            if num > N { break OUTERLOOP }
        }
        
        while true {
            if j + 1 >= n || arr[i][j+1] != -1 { break }
            arr[i][j+1] = num
            j += 1
            num += 1
            
            if num > N { break OUTERLOOP }
        }
        
        while true {
            if i - 1 < 0 || j - 1 == 0 || arr[i-1][j-1] != -1 { break }
            arr[i-1][j-1] = num
            i -= 1
            j -= 1
            num += 1
            
            if num > N { break OUTERLOOP }
        }
    }
    
    var index = 0
    for k in 0..<n {
        for l in 0..<k+1 {
            answer[index] = arr[k][l]
            index += 1
        }
    }
    
    return answer
}

print(solution(n))
print(solution(n2))
print(solution(n3))

