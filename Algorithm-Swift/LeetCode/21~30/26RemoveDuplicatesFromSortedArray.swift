//
//  26RemoveDuplicatesFromSortedArray.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        
        var slow = 0
        var fast = 1
        
        while fast < nums.count {
            if nums[slow] != nums[fast] {
                slow += 1
                nums[slow] = nums[fast]
            }
            fast += 1
        }
        
        return slow + 1
    }
}
