//
//  main.swift
//  BaekJoon 1011
//
//  Created by 김기현 on 2020/09/21.
//

import Foundation

let size = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<size {
    let input = readLine()?.split(separator: " ").map { Int($0)! }
    arr.append(input!)
}

for i in 0..<arr.count {
    var length = arr[i][1] - arr[i][0]
    var temp = 0
    var count = 0
    
    if length <= 3 {
        print(length)
        continue
    }
    
    for j in 2... {
        temp = j
        if temp * temp > length {
            temp -= 1
            break
        }
    }
    
    length -= temp * temp
    count += 2 * temp - 1
    
    while length != 0 {
        count += length / temp
        length -= (length / temp) * temp
        temp -= 1
    }
    
    print(count)
}

//for i in 0..<arr.count {
//    var start = arr[i][0]
//    let end = arr[i][1]
//    var move = 0
//    var count = 0
//
//    while start != end {
//        if count == 0 {
//            start += 1
//            move += 1
//            count += 1
//        }
//
//        let a = move - 1
//        let b = move
//        let c = move + 1
//
//        if start + c <= end - 1 {
//            start += c
//            move = c
//            count += 1
//        } else if start + b <= end - 1 {
//            start += b
//            move = b
//            count += 1
//        } else {
//            start += a
//            move = a
//            count += 1
//        }
//
//        if start == end - 1 {
//            start += 1
//            count += 1
//        }
//    }
//
//    print(count)
//}
