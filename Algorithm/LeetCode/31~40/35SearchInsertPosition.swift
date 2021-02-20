//
//  35SearchInsertPosition.swift
//  Algorithm
//
//  Created by vchan on 2021/2/10.
//

import Foundation

extension Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var index = nums.count
        
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] < target {
                left = mid + 1
            } else {
                index = mid
                right = mid - 1
            }
        }
        
        return index
    }
}
