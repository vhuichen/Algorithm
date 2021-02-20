//
//  31NextPermutation.swift
//  Algorithm
//
//  Created by vchan on 2021/1/20.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation


extension Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var left = nums.count - 1
        var right = left
        
        while left > 0 && nums[left - 1] >= nums[left] {
            left -= 1
        }
        
        if left > 0 {
            let exchangeIndex = left - 1
            let exchangeValue = nums[exchangeIndex]
            
            //二分查找
            var tempLeft = left
            var tempRight = right
            while tempLeft < tempRight {
                let middle = (tempRight + tempLeft + 1) / 2
                if (exchangeValue < nums[middle]) {
                    tempLeft = middle
                } else {
                    tempRight = middle - 1
                }
            }
            
            nums[exchangeIndex] = nums[tempRight]
            nums[tempRight] = exchangeValue
        }
        
        while left < right {
            let temp = nums[left]
            nums[left] = nums[right]
            nums[right] = temp
            left += 1
            right -= 1
        }
    }
}
