//
//  75SortColors.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0
        var right = nums.count - 1
        var i = 0
        
        while i <= right {
            if nums[i] == 0 {
                if left != i {
                    (nums[i], nums[left]) = (nums[left], nums[i])
                    left += 1
                    continue
                }
            } else if nums[i] == 2 {
                if right != i {
                    (nums[i], nums[right]) = (nums[right], nums[i])
                    right -= 1
                    continue
                }
            }
            i += 1
        }
    }
}
