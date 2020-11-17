//
//  main.swift
//  Baekjoon 1871
//
//  Created by 김기현 on 2020/11/17.
//


import Foundation

let dict = ["A": 0, "B": 1, "C": 2, "D": 3, "E": 4, "F": 5, "G": 6,
           "H": 7, "I": 8, "J": 9, "K": 10, "L": 11, "M": 12, "N": 13,
           "O": 14, "P": 15, "Q": 16, "R": 17, "S": 18, "T": 19, "U": 20,
           "V": 21, "W": 22, "X": 23, "Y": 24, "Z": 25]
let size = Int(readLine()!)!
var arr = [(String, String)]()
for _ in 0..<size {
    let input = readLine()!.split(separator: "-").map { String($0) }
    arr.append((input[0], input[1]))
}

for i in 0..<arr.count {
    let element = arr[i]
    let alphabet = element.0.map { String($0) }
    let number = Int(element.1)!
    
    var sum = 0
    
    for j in 1...alphabet.count {
        let num = alphabet.count - j
        let temp = (pow(26.0, num) as NSDecimalNumber).intValue
        sum += dict[alphabet[j-1]]! * temp
    }
    
    let result = abs(sum - number)
    
    if result <= 100 {
        print("nice")
    } else {
        print("not nice")
    }
}
