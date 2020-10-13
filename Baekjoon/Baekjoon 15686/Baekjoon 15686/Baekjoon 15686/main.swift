//
//  main.swift
//  Baekjoon 15686
//
//  Created by 김기현 on 2020/10/13.
//

import Foundation

let size = readLine()!.split(separator: " ").map { Int($0)! }
let N = size[0]
let M = size[1]
var inf = 987654321
var max = 50
var visited = [Bool](repeating: false, count: 13)
var result = 0

var array = [[Int]]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    array.append(input)
}

var chicken = [(Int, Int)]()
var home = [(Int, Int)]()
for i in 0..<array.count {
    for j in 0..<array[i].count {
        if array[i][j] == 2 {
            chicken.append((i, j))
        }
        
        if array[i][j] == 1 {
            home.append((i, j))
        }
    }
}

func distance(_ a: (Int, Int), _ b: (Int, Int)) -> Int {
    return abs(a.0 - b.0) + abs(a.1 - b.1)
}

func dfs(_ idx: Int, _ selected: Int) {
    if selected == M {
        var tempResult = 0
        for i in 0..<home.count {
            var dist = inf
            
            for j in 0..<chicken.count {
                if visited[j] {
                    dist = min(dist, distance(home[i], chicken[j]))
                }
            }
            
            tempResult += dist
        }
        
        result = min(result, tempResult)
        return
    }
    
    if idx == chicken.count {
        return
    }
    
    visited[idx] = true
    dfs(idx + 1, selected + 1)
    visited[idx] = false
    dfs(idx + 1, selected)
}

result = inf
dfs(0, 0)

print(result)


