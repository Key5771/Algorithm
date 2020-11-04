//
//  main.swift
//  Quad Compression
//
//  Created by 김기현 on 2020/11/04.
//

let arr = [[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]
let arr2 = [[1,1,1,1,1,1,1,1],
            [0,1,1,1,1,1,1,1],
            [0,0,0,0,1,1,1,1],
            [0,1,0,0,1,1,1,1],
            [0,0,0,0,0,0,1,1],
            [0,0,0,0,0,0,0,1],
            [0,0,0,0,1,0,0,1],
            [0,0,0,0,1,1,1,1]]

import Foundation

func solution(_ arr: [[Int]]) -> [Int] {
    var answer: [(Int, Int)] = [(0, 0), (1, 0)]

    func check(_ pointX: Int, _ pointY: Int, _ lengthX: Int, _ lengthY: Int) -> Bool {
        let point = arr[pointX][lengthX]

        for i in pointX..<pointY {
            for j in lengthX..<lengthY {
                if point != arr[i][j] {
                    return false
                }
            }
        }

        return true
    }

    func splitData(_ pointX: Int, _ pointY: Int, _ lengthX: Int, _ lengthY: Int) {
        if check(pointX, pointY, lengthX, lengthY) {
            answer[arr[pointX][lengthX]].1 += 1
        } else {
            let divideX = pointX + (pointY - pointX) / 2
            let divideY = lengthX + (lengthY - lengthX) / 2

            splitData(pointX, divideX, lengthX, divideY)
            splitData(pointX, divideX, divideY, lengthY)
            splitData(divideX, pointY, lengthX, divideY)
            splitData(divideX, pointY, divideY, lengthY)
        }
    }

    splitData(0, arr.count, 0, arr.count)

    return [answer[0].1, answer[1].1]
}

print(solution(arr))
print(solution(arr2))
