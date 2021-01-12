//
//  16.3SumClosest.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/6.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 3 { return nums[0] + nums[1] + nums[2] }
        
        var nums = nums
        nums.sort()
        
        var closest = Int(INT32_MAX)
        var closestAbsDistance = Int(INT32_MAX)
        var first = 0
        
        let firstNumLimit = nums.count - 2
        let thirdNumMax = nums.count - 1
        
        @inline(__always)
        func findClosest(_ sum: Int) {
            let dis = abs(sum - target)
            
            if closestAbsDistance > dis {
                closest = sum
                closestAbsDistance = dis
            }
        }
        
        while first < firstNumLimit {
            
            if nums[first] >= target && target >= 0 {
                findClosest(nums[first] + nums[first + 1] + nums[first + 2])
                break
            }
            
            var second = first + 1
            var third = thirdNumMax
            
            while second < third {
                
                if nums[third] <= target && target <= 0 {
                    findClosest(nums[third - 2] + nums[third - 1] + nums[third])
                    break
                }

                let sum = nums[first] + nums[second] + nums[third]
                
                if sum > target {
                    
                    repeat {
                        third -= 1
                    } while second < third && nums[third] == nums[third + 1]
                    
                } else if (sum < target) {
                    
                    repeat {
                        second += 1
                    } while second < third && nums[second - 1] == nums[second]
                    
                } else {
                    return sum
                }
                
                findClosest(sum)
            }
            
            repeat {
                first += 1
            } while first < firstNumLimit && nums[first - 1] == nums[first]
        }
        
        
        return closest
    }
}
