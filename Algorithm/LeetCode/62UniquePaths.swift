//
//  62UniquePaths.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        dp[0][0] = 1
        
        for i in 0..<m {
            for j in 0..<n {
                if i > 0 {
                    dp[i][j] = dp[i - 1][j]
                }
                
                if j > 0 {
                    dp[i][j] += dp[i][j - 1]
                }
            }
        }
        
        return dp.last!.last!
    }
}
