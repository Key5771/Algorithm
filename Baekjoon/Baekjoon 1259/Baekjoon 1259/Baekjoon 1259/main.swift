//
//  main.swift
//  Baekjoon 1259
//
//  Created by 김기현 on 2020/11/17.
//


while let input = readLine() {
    if input == "0" { break }
    
    var arr = input.map { String($0) }
    var check = false
    
    if arr.count == 1 {
        check = true
    } else {
        while !arr.isEmpty {
            if arr.count == 1 { break }
            
            let first = arr.removeFirst()
            let last = arr.removeLast()
            
            if first == last {
                check = true
            } else {
                check = false
                break
            }
        }
    }
    
    if check {
        print("yes")
    } else {
        print("no")
    }
}
