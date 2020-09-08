//
//  main.swift
//  2020 카카오 인턴십 수식최대화
//
//  Created by 김기현 on 2020/09/08.
//  Copyright © 2020 김기현. All rights reserved.
//

import Foundation

let expression = "100-200*300-500+20"
let expression2 = "50*6-3*2"

import Foundation

func divide(_ expression: String) -> [[String]] {
    var num = [String]()
    var op = [String]()

    var str = ""
    for char in expression {
        if Int(String(char)) != nil {
            str += String(char)
        } else {
            op.append(String(char))
            num.append(str)
            str = ""
        }
    }

    if str != "" {
        num.append(str)
    }

    return [num, op]
}

func solution(_ expression: String) -> Int64 {
    var answerArr = [Int64]()
    var operation = [["*", "+", "-"], ["*", "-", "+"], ["+", "*", "-"], ["+", "-", "*"], ["-", "*", "+"], ["-", "+", "*"]]

    while !operation.isEmpty {
        var num = divide(expression)[0].map { Int64($0)! }
        var op = divide(expression)[1]

        let first = operation.removeFirst()
        var index = 0

        while !op.isEmpty {
            let firstOperation = op.firstIndex(of: first[index])

            guard let oper = firstOperation else {
                if index <= op.count - 1 {
                    index += 1
                    continue
                } else {
                    break
                }
            }

            let b = num.remove(at: oper+1)
            let a = num.remove(at: oper)

            var result: Int64 = 0

            if op[oper] == "*" {
                result = a * b
            } else if op[oper] == "+" {
                result = a + b
            } else {
                result = a - b
            }

            op.remove(at: oper)
            num.insert(result, at: oper)
        }

        if !op.isEmpty {
            if op.last! == "*" {
                answerArr.append(num[0] * num[1])
            } else if op.last! == "+" {
                answerArr.append(num[0] + num[1])
            } else {
                answerArr.append(num[0] - num[1])
            }
        } else {
            answerArr.append(num[0])
        }
    }

    var max: Int64 = 0

    for i in 0..<answerArr.count {
        if max < abs(answerArr[i]) {
            max = abs(answerArr[i])
        }
    }

    return max
}


print(solution(expression))
print(solution(expression2))

