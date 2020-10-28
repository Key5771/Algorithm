//
//  main.swift
//  Baekjoon 1700
//
//  Created by 김기현 on 2020/10/28.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let k = input[1]

let list = readLine()!.split(separator: " ").map{ Int($0)! }

var plug = [Int]()
var offCount = 0

for (i, e) in list.enumerated() {
  if plug.contains(e) {
    continue
  } else if plug.count < n {
    plug.append(e)
  } else {
    var offIndex = -1
    var lastUsed = -1
    for (plugIndex, p) in plug.enumerated() {
      var shouldUsed = -1
      
      for plugUsedIndex in i+1..<list.count {
        if p == list[plugUsedIndex] {
          shouldUsed = plugUsedIndex
          break
        }
      }
      
      if shouldUsed == -1 {
        offIndex = plugIndex
        break
      } else {
        if shouldUsed > lastUsed {
          lastUsed = shouldUsed
          offIndex = plugIndex
        }
      }
    }
    
    plug[offIndex] = e
    offCount += 1
  }
}

print(offCount)
