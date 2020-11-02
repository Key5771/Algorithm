//
//  main.swift
//  WordTransfer
//
//  Created by 김기현 on 2020/11/02.
//

import Foundation

let begin = "hit"
let target = "cog"
let words = ["hot", "dot", "dog", "lot", "log", "cog"]

let begin2 = "hit"
let target2 = "cog"
let words2 = ["hot", "dot", "dog", "lot", "log"]

func dfs(_ beginStr: String, _ wordStr: String, _ targetStr: String) -> (Bool, Int) {
    var begin = beginStr.map { String($0) }
    let word = wordStr.map { String($0) }
    let target = targetStr.map { String($0) }
    var count = 0
    var targetCount = 0
    
    for i in 0..<begin.count {
        if begin[i] != target[i] {
            targetCount += 1
        }
    }
    
    if targetCount == 1 {
        return (true, 1)
    }
    
    for i in 0..<begin.count {
        if begin[i] != word[i] {
            count += 1
        }
        
        if count > 1 { break }
    }
    
    if count <= 1 {
        begin = word
        return (true, 0)
    }
    
    return (false, 0)
}

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    if !words.contains(target) {
        return 0
    }
    
    var begin = begin
    var result = 0
    
    for i in 0..<words.count {
        let temp = dfs(begin, words[i], target)
        if temp.0 == true && temp.1 == 1 {
            result += 1
            break
        } else if temp.0 == true && temp.1 == 0 {
            result += 1
            begin = words[i]
        }
    }
    
    return result
}

print(solution(begin, target, words))
print(solution(begin2, target2, words2))
