//
//  40CombinationSumII.swift
//  Algorithm
//
//  Created by vchan on 2021/2/27.
//

import Foundation

extension Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var results = [[Int]]()
        let candidates = candidates.sorted()
        
        func backtrack(_ start: Int, _ combination: [Int], _ target: Int) {
            var i = start
            while i < candidates.count {
                var combination = combination
                combination.append(candidates[i])
                let target = target - candidates[i]
                if target == 0 {
                    results.append(combination)
                    break
                } else if (target < 0) {
                    break
                }
                
                backtrack(i + 1, combination, target)
                
                repeat {
                    i += 1
                } while i < candidates.count && candidates[i - 1] == candidates[i]
            }
        }
        
        backtrack(0, [], target)
        
        return results
    }
}
