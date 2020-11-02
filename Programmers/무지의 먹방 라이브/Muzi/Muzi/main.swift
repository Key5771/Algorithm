//
//  main.swift
//  Muzi
//
//  Created by 김기현 on 2020/11/02.
//

import Foundation

let food_times = [3, 1, 2]
let k: Int64 = 5

let food_times2 = [300, 100, 200]
let k2: Int64 = 50

func solution(_ food_times: [Int], _ k: Int64) -> Int {
    guard food_times.reduce(0, +) > k else {
        return -1
    }
    var foodInfo: [(time: Int, idx: Int)] = food_times.enumerated().map { ($1, $0) }.sorted(by: <)
    var k: Int = Int(k)

    var i = 0, j = 0, cycle = 0

    while i < foodInfo.count {
        j = i

        while j < foodInfo.count && foodInfo[i].time == foodInfo[j].time {
            j += 1
        }

        let eats = foodInfo[i].time - cycle
        let dec = (foodInfo.count - i) * eats

        if dec > k { break }

        k -= dec
        cycle += eats

        i = j
    }

    foodInfo = foodInfo[i...].sorted { $0.idx < $1.idx }
    k = k % foodInfo.count

    return foodInfo[k].idx + 1
}

print(solution(food_times, k))
print(solution(food_times2, k2))
