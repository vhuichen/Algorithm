//
//  10.RegularExpressionMatching.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/31.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        //子函数
        @inline(__always)
        func isCharMatch(_ sArray: [Character], _ pArray: [Character], _ sLength: Int, _ pLength: Int) -> Bool {
            if sLength == 0 { return false }
            
            return (sArray[sLength - 1] == pArray[pLength - 1]) || (pArray[pLength - 1] == ".")
        }
        
        /*
         动态规划
         dp[i][j] 表示 s 的前i个字符匹配 p 的前 j 个字符
         状态转移方程 p[i] == s[j]
         */
        let sArray = Array(s)
        let pArray = Array(p)
        let sLength = sArray.count
        let pLength = pArray.count
        
        var dp = [[Bool]](repeating: [Bool](repeating: false, count: pLength + 1), count: sLength + 1)
        dp[0][0] = true
        
        guard pLength > 0 else {
            return dp[sArray.count][pArray.count]
        }
        
        for i in 0...sLength {
            for j in 1...pLength {
                if pArray[j - 1] == "*" {
                    dp[i][j] = dp[i][j - 2]
                    if isCharMatch(sArray, pArray, i, j - 1) {
                        dp[i][j] = dp[i][j] || dp[i - 1][j]
                    }
                } else if isCharMatch(sArray, pArray, i, j) {
                    dp[i][j] = dp[i - 1][j - 1]
                }
            }
        }
        
        return dp[sArray.count][pArray.count]
    }
}
