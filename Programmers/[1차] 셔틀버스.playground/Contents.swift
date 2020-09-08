import UIKit

let n = 1 // 운행 횟수
let t = 1 // 배차 간격
let m = 5 // 최대 인원 수
let timetable = ["08:00", "08:01", "08:02", "08:03"]

let n2 = 2 // 운행 횟수
let t2 = 10 // 배차 간격
let m2 = 2 // 최대 인원 수
let timetable2 = ["09:10", "09:09", "08:00"]

let n3 = 2
let t3 = 1
let m3 = 2
let timetable3 = ["09:00", "09:00", "09:00", "09:00"]

let n4 = 1
let t4 = 1
let m4 = 5
let timetable4 = ["00:01", "00:01", "00:01", "00:01", "00:01"]

let n5 = 1
let t5 = 1
let m5 = 1
let timetable5 = ["23:59"]

let n6 = 10
let t6 = 60
let m6 = 45
let timetable6 = ["23:59","23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59"]

func solution(_ n: Int, _ t: Int, _ m: Int, _ timetable: [String]) -> String {
    var answer = 0
    var result = ""

    var start = Int("09:00".components(separatedBy: ":")[0])! * 3600 + Int("09:00".components(separatedBy: ":")[1])! * 60

    var bus = [Int]()

    for i in 0..<n {
        if i == 0 {
            bus.append(start)
        } else {
            start += t * 60
            bus.append(start)
        }
    }

    var timeArr = [Int]()

    for i in 0..<timetable.count {
        let time = Int(timetable[i].components(separatedBy: ":")[0])! * 3600
            + Int(timetable[i].components(separatedBy: ":")[1])! * 60

        timeArr.append(time)
    }

    for i in 0..<timeArr.count {
        if timeArr[i] >= 86400 {
            timeArr[i] = 86340
        }
    }

    timeArr.sort()

    for i in 0..<bus.count {
        let first = bus[i]
        var count = 0
        var onBus = [Int]()

        while true {
            for j in 0..<timeArr.count {
                if timeArr[j] <= first && count < m {
                    count += 1
                    onBus.append(timeArr[j])
                } else {
                    break
                }
            }

            if i == bus.count - 1 {
                if count < m {
                    answer = bus[i]
                } else {
                    answer = onBus.last! - (1 * 60)
                }

                break
            } else {
                for _ in 0..<count {
                    timeArr.removeFirst()
                }

                break
            }
        }
    }

    let hour = answer / 3600
    answer %= 3600
    let minute = answer / 60

    if hour < 10 && minute < 10 {
        result = "0\(hour):0\(minute)"
    } else if hour < 10 && minute > 10 {
        result = "0\(hour):\(minute)"
    } else if hour >= 10 && minute < 10 {
        result = "\(hour):0\(minute)"
    } else {
        result = "\(hour):\(minute)"
    }

    return result
}

print(solution(n, t, m, timetable))
print(solution(n2, t2, m2, timetable2))
print(solution(n3, t3, m3, timetable3))
print(solution(n4, t4, m4, timetable4))
print(solution(n5, t5, m5, timetable5))
print(solution(n6, t6, m6, timetable6))
