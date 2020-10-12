//
//  main.swift
//  Baekjoon 18242
//
//  Created by 김기현 on 2020/10/12.
//

import Foundation

let size = readLine()!.split(separator: " ").map { Int($0)! }
let x = size[1]
let y = size[0]
var array = [[Int]]()

for _ in 0..<y {
    var temp = [Int]()
    let input = readLine()!.map { String($0) }
    for i in 0..<input.count {
        if input[i] == "." {
            temp.append(0)
        } else {
            temp.append(1)
        }
    }
    array.append(temp)
}

var startX = 0
var startY = 0
var endX = 0
var endY = 0

OUTERLOOP: for i in 0..<array.count {
    for j in 0..<array[i].count {
        if array[i][j] == 1 {
            startX = j
            startY = i
            break OUTERLOOP
        }
    }
}

OUTERLOOP: for i in (0..<array.count).reversed() {
    for j in (0..<array[i].count).reversed() {
        if array[i][j] == 1 {
            endX = j
            endY = i
            break OUTERLOOP
        }
    }
}

var row = endY - startY + 1
var col = endX - startX + 1

var left = 0
var right = 0
var up = 0
var down = 0

for i in startY...endY {
    if array[i][startX] == 1 {
        left += 1
    }
    
    if array[i][endX] == 1 {
        right += 1
    }
}

if left != row {
    print("LEFT")
} else if right != row {
    print("RIGHT")
}

for i in startX...endX {
    if array[startY][i] == 1 {
        up += 1
    }
    
    if array[endY][i] == 1 {
        down += 1
    }
}

if up != col {
    print("UP")
} else if down != col {
    print("DOWN")
}
