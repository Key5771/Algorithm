//
//  main.swift
//  괄호변환
//
//  Created by 김기현 on 2020/09/08.
//  Copyright © 2020 김기현. All rights reserved.
//

import Foundation

let p = "(()())()"
let p2 = ")("
let p3 = "()))((()"

extension String {
    var reverseData: String {
        var result = ""

        for char in self {
            result += (char == "(") ? ")" : "("
        }

        return result
    }
}

func isRight(_ str: String) -> Bool {
    var count = 0

    for char in str {
        if count < 0 { return false }
        count += char == "(" ? 1 : -1
    }

    return count == 0
}

func splitData(_ str: String) -> String {
    if str == "" {
        return ""
    }

    var u = "", v = ""
    var leftCount = 0, rightCount = 0

    var s = ""

    for char in str {

        if char == "(" {
            s += String(char)
            leftCount += 1
        } else {
            s += String(char)
            rightCount += 1
        }

        if u != "" {
            v += String(char)
        } else if leftCount == rightCount {
            u = s
        }
    }

    if isRight(u) {
        return u + splitData(v)
    } else {
        return "(\(splitData(v)))" + transform(u)
    }
}

func transform(_ str: String) -> String {
    var s = str
    s.removeFirst()
    s.removeLast()

    return s.reverseData
}

func solution(_ p: String) -> String {
    if p == "" {
        return ""
    } else {
        return splitData(p)
    }
}

print(solution(p))
print("=================")
print(solution(p2))
print("=================")
print(solution(p3))

