//
//  39CombinationSum.swift
//  Algorithm
//
//  Created by vchan on 2021/2/27.
//

import Foundation

extension Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var results = [[Int]]()
        let candidates = candidates.sorted()
        
        func backtrack(_ start: Int, _ combination: [Int], _ target: Int) {
            for i in start..<candidates.count {
                var combination = combination
                combination.append(candidates[i])
                let target = target - candidates[i]
                if target == 0 {
                    results.append(combination)
                    break
                } else if (target < 0) {
                    break
                }
                backtrack(i, combination, target)
            }
        }
        
        backtrack(0, [], target)
        
        return results
    }
    
    /*
    //回溯
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var results = [[Int]]()
        
        func backtrack(_ start: Int, _ combination: [Int], _ sum: Int) {
            for i in start..<candidates.count {
                var combination = combination
                combination.append(candidates[i])
                let sum = sum + candidates[i]
                if sum == target {
                    results.append(combination)
                } else if (sum < target) {
                    backtrack(i, combination, sum)
                }
            }
        }
        
        backtrack(0, [], 0)
        
        return results
    }
    */
}
