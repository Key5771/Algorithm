//
//  main.swift
//  방문길이
//
//  Created by 김기현 on 2020/09/21.
//

let dirs = "ULURRDLLU"
let dirs2 = "LULLLLLLU"

import Foundation

func solution(_ dirs: String) -> Int {
    var current = (0, 0)
    var set = Set<String>()
    let direction = dirs.map { String($0) }
    
    for str in direction {
        var point = current
        var row = point.0
        var col = point.1
        
        if str == "U" {
            col += 1
        } else if str == "D" {
            col -= 1
        } else if str == "L" {
            row -= 1
        } else if str == "R" {
            row += 1
        }
        
        if col > 5 || col < -5  {
            continue
        }
        
        if row > 5 || row < -5 {
            continue
        }
        
        point.0 = row
        point.1 = col
        
        if !set.contains("\(point)\(current)") {
            set.insert("\(current)\(point)")
        }
        current = point
    }
    
    print("set: \(set)")

    return set.count
}

print(solution(dirs))
print(solution(dirs2))

