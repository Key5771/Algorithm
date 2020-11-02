//
//  main.swift
//  EmptyRoom
//
//  Created by 김기현 on 2020/11/02.
//

import Foundation

let k: Int64 = 10
let room_number: [Int64] = [1, 3, 4, 1, 3, 1]

var dict: [Int64: Int64] = [:]
func findEmptyRoom(_ room: Int64) -> Int64 {
    if !dict.keys.contains(room) {
        dict[room] = room + 1
        return room
    }
    
    let nextRoom: Int64 = dict[room]!
    let emptyRoom: Int64 = findEmptyRoom(nextRoom)
    dict[room] = emptyRoom
    return emptyRoom
}

func solution(_ k: Int64, _ room_number: [Int64]) -> [Int64] {
    let length = room_number.count
    var answer = [Int64](repeating: 0, count: length)
    
    for i in 0..<length {
        answer[i] = findEmptyRoom(room_number[i])
    }
    return answer
}

print(solution(k, room_number))
