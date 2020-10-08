//
//  main.swift
//  Baekjoon 11656
//
//  Created by 김기현 on 2020/10/08.
//

import Foundation

var input = readLine()!
var array = [String]()

while !input.isEmpty {
    array.append(input)
    input.removeFirst()
}

let sortArray = array.sorted()
for i in 0..<sortArray.count {
    print(sortArray[i])
}
