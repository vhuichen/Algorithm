//
//  53MaximumSubarray.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation

extension Solution {
    /*
    //贪心
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxValue = nums[0]
        var currentValue = 0
        
        for item in nums {
            currentValue += item
            if maxValue < currentValue {
                maxValue = currentValue
            }
            if currentValue < 0 {
                currentValue = 0
            }
        }
        
        return maxValue
    }
    */
    
    //动态规划
    func maxSubArray(_ nums: [Int]) -> Int {
        var nums = nums
        var maxValue = nums[0]
        
        for i in 1..<nums.count {
            if nums[i - 1] > 0 {
                nums[i] += nums[i - 1]
            }
            if nums[i] > maxValue {
                maxValue = nums[i]
            }
        }
        
        return maxValue
    }

}
