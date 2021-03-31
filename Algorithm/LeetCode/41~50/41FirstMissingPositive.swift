//
//  41FirstMissingPositive.swift
//  Algorithm
//
//  Created by vchan on 2021/3/1.
//

import Foundation

extension Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 1 }
        
        var nums = nums
        
        for i in 0..<nums.count {
            while nums[i] > 0 && nums[i] <= nums.count && nums[i] != nums[nums[i] - 1] {
                let temp = nums[i]
                nums[i] = nums[temp - 1]
                nums[temp - 1] = temp
            }
        }
        
        for i in 1...nums.count {
            if nums[i - 1] != i {
                return i
            }
        }
        
        return nums.count + 1
    }
    
    func firstMissingPositive2(_ nums: [Int]) -> Int {
        var nums = nums
        
        for i in 0..<nums.count where nums[i] <= 0 {
            nums[i] = nums.count + 1
        }
        
        for i in 0..<nums.count {
            let num = abs(nums[i]) - 1
            if num >= 0 && num < nums.count && nums[num] > 0 {
                nums[num] = -nums[num]
            }
        }
        
        for i in 0..<nums.count {
            if nums[i] > 0 {
                return i + 1
            }
        }
        
        return nums.count + 1
    }
}
