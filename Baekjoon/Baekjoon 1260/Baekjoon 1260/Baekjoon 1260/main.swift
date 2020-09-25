//
//  main.swift
//  Baekjoon 1260
//
//  Created by 김기현 on 2020/09/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let point = input[0]
let connect = input[1]
let start = input[2]

var graph = [Int: [Int]]()

for _ in 0..<connect {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let start = line[0]
    let end = line[1]
    
    if graph[start] == nil {
        graph[start] = [end]
    } else {
        graph[start]?.append(end)
    }
    
    if graph[end] == nil {
        graph[end] = [start]
    } else {
        graph[end]?.append(start)
    }
}

for key in graph.keys {
    graph[key]?.sort(by: >)
}

var dfsResult = ""

for i in DFS(graph, start) {
    dfsResult += String(i) + " "
}

for key in graph.keys {
    graph[key]?.sort(by: <)
}

var bfsResult = ""

for i in BFS(graph, start) {
    bfsResult += String(i) + " "
}

print(dfsResult)
print(bfsResult)

func DFS(_ graph: [Int: [Int]], _ start: Int) -> [Int] {
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        if visited.contains(node) {
            continue
        } else {
            visited.append(node)
            if let nodeWay = graph[node] {
                stack += nodeWay
            }
        }
    }
    
    return visited
}

func BFS(_ graph: [Int: [Int]], _ start: Int) -> [Int] {
    var visited = [Int]()
    var queue = [start]
    
    while !queue.isEmpty {
        let node = queue.remove(at: 0)
        if visited.contains(node) {
            continue
        } else {
            visited.append(node)
            if let nodeWay = graph[node] {
                queue += nodeWay
            }
        }
    }
    
    return visited
}


