//
//  34FindFirstAndLastPositionOfElementInSortedArray.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/10.
//

import Foundation

extension Solution {
    /*
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var result = [-1, -1]
        
        while left <= right {
            let mid = (right + left) / 2
            if nums[mid] < target {
                left = mid + 1
            } else {
                result[0] = mid
                right = mid - 1
            }
        }
        
        guard result[0] != -1 && nums[result[0]] == target else { return [-1, -1] }
        
        left = result[0]
        right = nums.count - 1
        while left <= right {
            let mid = (right + left) / 2
            if (nums[mid] > target) {
                right = mid - 1
            } else {
                result[1] = mid
                left = mid + 1
            }
        }
        
        guard result[1] != -1 else { return [-1, -1] }
        
        return result
    }
    */
    
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let middle = (right + left) / 2
            
            if nums[middle] == target {
                var result = [-1, -1]
                
                var left1 = left
                var right1 = middle
                while left1 <= right1 {
                    let mid = (right1 + left1) / 2
                    if nums[mid] < target {
                        left1 = mid + 1
                    } else {
                        result[0] = mid
                        right1 = mid - 1
                    }
                }
                
                var left2 = middle
                var right2 = right
                while left2 <= right2 {
                    let mid = (right2 + left2) / 2
                    
                    if nums[mid] > target {
                        right2 = mid - 1
                    } else {
                        result[1] = mid
                        left2 = mid + 1
                    }
                }
                
                return result
            } else if (nums[middle] < target) {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        
        return [-1, -1]
    }
}
