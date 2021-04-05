//
//  300LongestIncreasingSubsequence.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var maxLength = 1
        var dMax = [Int](repeating: 0, count: nums.count + 1)
        dMax[maxLength] = nums[0]
        
        for i in 1..<nums.count {
            if dMax[maxLength] < nums[i] {
                maxLength += 1
                dMax[maxLength] = nums[i]
            } else {
                var left = 1
                var right = maxLength - 1
                var targetLength = 0
                
                while left <= right {
                    let middle = (right + left) / 2
                    if dMax[middle] < nums[i] {
                        targetLength = middle
                        left = middle + 1
                    } else {
                        right = middle - 1
                    }
                }
                
                dMax[targetLength + 1] = nums[i]
            }
        }
        
        return maxLength
    }
    
    func lengthOfLIS1(_ nums: [Int]) -> Int {
        var dp = [Int](repeating: 1, count: nums.count)
        var maxLength = 1
        
        for i in 1..<nums.count {
            for j in 0..<i {
                if nums[j] < nums[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            maxLength = max(maxLength,  dp[i])
        }
        
        return maxLength
    }
}
