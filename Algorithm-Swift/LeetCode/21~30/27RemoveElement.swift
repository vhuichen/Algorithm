//
//  27RemoveElement.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        /*
         var array = array
         var slow = 0
         var fast = 0
         
         while fast < array.count {
             if array[fast] != val {
                 array[slow] = array[fast]
                 slow += 1
             }
             fast += 1
         }
         
         return slow
         */
        
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            if nums[right] == val {
                right -= 1
                continue
            }
            
            if nums[left] == val {
                nums[left] = nums[right]
                right -= 1
            }
            left += 1
        }
        
        return left
    }
}
