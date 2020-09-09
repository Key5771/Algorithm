//
//  main.swift
//  BestAlbum
//
//  Created by 김기현 on 2020/09/09.
//  Copyright © 2020 김기현. All rights reserved.
//

let genres = ["classic", "pop", "classic", "classic", "pop"]
let plays = [500, 600, 150, 800, 2500]

import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    var answer = [Int]()
    var arr = [(Int, String, Int)]()
    var dict2 = [String: Int]()
    
    for i in 0..<genres.count {
        dict2[genres[i]] = 0
    }
    
    for i in 0..<genres.count {
        dict2[genres[i]]! += plays[i]
    }
    
    for i in 0..<genres.count {
        arr.append((i, genres[i], plays[i]))
    }
    
    arr.sort { (lhs, rhs) -> Bool in
        if lhs.2 != rhs.2 {
            return lhs.2 > rhs.2
        } else {
            return lhs.1 < rhs.1
        }
    }
    
    let sortDict2 = dict2.sorted { (lhs, rhs) -> Bool in
        return lhs.value > rhs.value
    }
    
    for i in 0..<sortDict2.count {
        var count = 0
        for j in 0..<arr.count {
            if sortDict2[i].key == arr[j].1 {
                count += 1
                if count > 2 { break }
                answer.append(arr[j].0)
            }
        }
    }
    
    return answer
}

print(solution(genres, plays))


