//
//  main.swift
//  JoyStick
//
//  Created by 김기현 on 2020/09/17.
//  Copyright © 2020 김기현. All rights reserved.
//

let name = "JEROEN"
let name2 = "JAN"

import Foundation

func solution(_ name: String) -> Int {
    var count = 0
    var nameArr = [Int]()
    
    for char in name {
        var temp = Int(char.asciiValue!) - 65
        
        if temp > 13 {
            temp = 26 - temp
        }
        
        count += temp
        nameArr.append(temp)
    }
    
    var tempArr = [Int](repeating: 0, count: name.count)
    tempArr[0] = nameArr[0]
    
    var index = 0
    while tempArr != nameArr {
        var right = index
        var rCnt = 0
        while tempArr[right] == nameArr[right] {
            right += 1
            if right >= name.count {
                right = 0
            }
            rCnt += 1
        }
        
        var left = index
        var lCnt = 0
        while tempArr[left] == nameArr[left] {
            left -= 1
            if left < 0 {
                left = name.count - 1
            }
            lCnt += 1
        }
        
        if rCnt <= lCnt {
            count += rCnt
            index = right
        } else {
            count += lCnt
            index = left
        }
        
        tempArr[index] = nameArr[index]
    }
    
    return count
}

print(solution(name))
print(solution(name2))

