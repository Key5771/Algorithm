//
//  main.swift
//  Baekjoon 5656
//
//  Created by 김기현 on 2020/11/18.
//

var count = 1
while let input = readLine() {
    let str = input.split(separator: " ").map { String($0) }
    let first = Int(str[0])!
    let second = Int(str[2])!
    let order = str[1]
    
    if order == "E" { break }
    
    switch order {
    case ">":
        if first > second {
            print("Case \(count): true")
        } else {
            print("Case \(count): false")
        }
        break
    case ">=":
        if first >= second {
            print("Case \(count): true")
        } else {
            print("Case \(count): false")
        }
        break
    case "<":
        if first < second {
            print("Case \(count): true")
        } else {
            print("Case \(count): false")
        }
        break
    case "<=":
        if first <= second {
            print("Case \(count): true")
        } else {
            print("Case \(count): false")
        }
        break
    case "==":
        if first == second {
            print("Case \(count): true")
        } else {
            print("Case \(count): false")
        }
        break
    case "!=":
        if first != second {
            print("Case \(count): true")
        } else {
            print("Case \(count): false")
        }
        break
    default:
        break
    }
    
    count += 1
}


