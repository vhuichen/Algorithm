//
//  56MergeIntervals.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func merge1(_ intervals: [[Int]]) -> [[Int]] {
        var intervals = intervals
        intervals.sort { (one:[Int], other:[Int]) -> Bool in
            if one.first == other.first {
                return one.last! < other.last!
            } else {
                return one.first! < other.first!
            }
        }
        
        var results = [[Int]]()
        results.append(intervals[0])
        
        for i in 1..<intervals.count {
            if intervals[i][0] <= results.last![1] {
                results[results.count - 1][1] = max(intervals[i][1], results.last![1])
            } else {
                results.append(intervals[i])
            }
        }
        
        return results
    }
    
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var maxValue = Int(INT8_MIN)
        for item in intervals {
            if item[1] > maxValue {
                maxValue = item[1]
            }
        }
        
        var bitArray = [Int16](repeating: 0, count: maxValue * 2 + 2)
        for item in intervals {
            bitArray[item[0] * 2] += 1
            bitArray[item[1] * 2 + 1] -= 1
        }
        
        var results = [[Int]]()
        var start = -1
        var sum:Int16 = 0
        for i in 0..<bitArray.count where bitArray[i] != 0 {
            sum += bitArray[i]
            
            if start == -1 {
                start = i
                continue
            }
            
            if sum == 0 {
                results.append([start / 2, (i - 1) / 2])
                start = -1
            }
        }
        
        return results
    }
}
