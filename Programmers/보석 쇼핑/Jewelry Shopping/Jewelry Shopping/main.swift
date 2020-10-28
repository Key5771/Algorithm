//
//  main.swift
//  Jewelry Shopping
//
//  Created by 김기현 on 2020/10/28.
//

import Foundation

let gems = ["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]
let gems2 = ["AA", "AB", "AC", "AA", "AC"]
let gems3 = ["XYZ", "XYZ", "XYZ"]
let gems4 = ["ZZZ", "YYY", "NNNN", "YYY", "BBB"]
let gems5 = ["1", "2", "1", "1", "3", "2", "2", "1", "2", "3"]

func solution(_ gems: [String]) -> [Int] {
    var dict: [String: Int] = [:]
    let setCount = Set(gems).count
    
    var startIndex = 0
    var endIndex = -1
    var count = 0
    
    var setArr: [(Int, Int, Int)] = []
    
    while startIndex < gems.count || endIndex < gems.count {
        if count == setCount {
            setArr.append((startIndex, endIndex, endIndex - startIndex))
            
            if dict[gems[startIndex]]! - 1 == 0 {
                dict.removeValue(forKey: gems[startIndex])
                count -= 1
            } else {
                dict[gems[startIndex]]! -= 1
            }
            
            startIndex += 1
        } else {
            endIndex += 1
            
            if endIndex < gems.count {
                if dict[gems[endIndex]] == nil {
                    dict[gems[endIndex]] = 1
                    count += 1
                } else {
                    dict[gems[endIndex]]! += 1
                }
            }
        }
        
        if endIndex >= gems.count && count < setCount { break }
    }
    
    setArr = setArr.sorted(by: { (lhs, rhs) -> Bool in
        if lhs.2 == rhs.2 {
            return lhs.0 < rhs.0
        }
        
        return lhs.2 < rhs.2
    })
    
    return [setArr[0].0 + 1, setArr[0].1 + 1]
}

print(solution(gems))
print("=========================================================")
print(solution(gems2))
print("=========================================================")
print(solution(gems3))
print("=========================================================")
print(solution(gems4))
print("=========================================================")
print(solution(gems5))
