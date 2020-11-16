//
//  main.swift
//  Baekjoon 10804
//
//  Created by 김기현 on 2020/11/16.
//


var arr = [Int](repeating: 0, count: 21)
for i in 0..<arr.count {
    arr[i] = i
}

var order = [[Int]]()
for _ in 0..<10 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    order.append(input)
}

for i in 0..<order.count {
    let start = order[i][0]
    let end = order[i][1]
    
    var array = [Int]()
    for j in start...end {
        array.append(arr[j])
    }
    
    array.reverse()
    
    for j in start...end {
        arr[j] = array.removeFirst()
    }
}

var str = ""
arr.removeFirst()
for i in 0..<arr.count {
    str += String(arr[i])
    str += " "
}

str.removeLast()
print(str)

