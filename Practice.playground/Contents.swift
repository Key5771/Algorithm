import UIKit

//let n = 6
//let delivery = [[1,3,1],[3,5,0],[5,4,0],[2,5,0]]
//
//let n2 = 7
//let delivery2 = [[5,6,0],[1,3,1],[1,5,0],[7,6,0],[3,7,1],[2,5,0]]
//
//func solution(_ n: Int, _ delivery: [[Int]]) -> String {
//    var str = [String](repeating: "", count: n)
//    let success = delivery.filter { $0[2] == 1 }
//    var successElement = [Int]()
//
//    for i in 0..<success.count {
//        if str[success[i][0] - 1] == "" {
//            str[success[i][0] - 1] = "O"
//            if !successElement.contains(success[i][0]) {
//                successElement.append(success[i][0])
//            }
//        }
//
//        if str[success[i][1] - 1] == "" {
//            str[success[i][1] - 1] = "O"
//            if !successElement.contains(success[i][1]) {
//                successElement.append(success[i][1])
//            }
//        }
//    }
//
//    for i in 0..<delivery.count {
//        if success.contains(delivery[i]) { continue }
//
//        let first = delivery[i][0]
//        let second = delivery[i][1]
//
//        if successElement.contains(first) {
//            str[second - 1] = "X"
//        } else if successElement.contains(second) {
//            str[first - 1] = "X"
//        }
//    }
//
//    for i in 0..<str.count {
//        if str[i] == "" {
//            str[i] = "?"
//        }
//    }
//
//    return str.joined()
//}
//
//print(solution(n, delivery))
//print(solution(n2, delivery2))






let id_list = ["A B C D", "A D", "A B D", "B D"]
let k = 2

let id_list2 = ["JAY", "JAY ELLE JAY MAY", "MAY ELLE MAY", "ELLE MAY", "ELLE ELLE ELLE", "MAY"]
let k2 = 3

func solution(_ id_list: [String], _ k: Int) -> Int {
    var answer = 0
    var dict = [String: Int]()
    
    for i in 0..<id_list.count {
        let arr = Array(Set(id_list[i].split(separator: " ").map { String($0) }))
        
        for j in 0..<arr.count {
            if dict[arr[j]] == nil {
                dict[arr[j]] = 1
            } else {
                dict[arr[j]]! += 1
            }
        }
    }
    
    for (_, value) in dict {
        if value >= k {
            answer += k
        } else {
            answer += value
        }
    }
    
    return answer
}

print(solution(id_list, k))
print(solution(id_list2, k2))
