//
//  96UniqueBinarySearchTrees.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/8.
//

import Foundation

extension Solution {
    /*
    //递归
    func numTrees(_ n: Int) -> Int {
        var array = [Int](repeating: 0, count: n + 1)
        array[0] = 1
        array[1] = 1
        
        func numTrees2(_ n: Int) -> Int {
            if array[n] > 0 { return array[n] }
            
            var temp = 0
            for left in 0..<n {
                temp += numTrees2(left) * numTrees2(n - left - 1)
            }
            
            array[n] = temp
            
            return temp
        }
        
        return numTrees2(n)
    }
    */
    
    //动态规划
    func numTrees(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        
        var dp = [Int](repeating: 0, count: n + 1)
        dp[0] = 1
        dp[1] = 1
        
        for i in 2...n {
            var temp = 0
            for j in 0..<i {
                temp += dp[j] * dp[i - j - 1]
            }
            dp[i] = temp
        }
        
        return dp[n]
    }
}
