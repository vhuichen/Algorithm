//
//  283MoveZeroes.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation

extension Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                let temp = nums[left]
                nums[left] = nums[i]
                nums[i] = temp
                left += 1
            }
        }
    }
}
