//
//  55JumpGame.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        
        var dict = [Int:Bool]()
        dict[0] = true
        
        func canJump(_ index: Int) -> Bool {
            if let isCanJump = dict[index] { return isCanJump }
            
            for i in (0..<index).reversed() {
                if nums[i] >= (index - i) && canJump(i) {
                    dict[index] = true
                    return true
                }
            }
            dict[index] = false
            return false
        }
        return canJump(nums.count - 1)
    }
    
    func canJump1(_ nums: [Int]) -> Bool {
        var jumpMax = nums[0]
        
        for i in 1..<nums.count {
            if jumpMax < i { return false }
            jumpMax = max(nums[i] + i, jumpMax)
        }
        
        return true
    }
}
