//
//  33SearchInRotatedSortedArray.swift
//  Algorithm
//
//  Created by vchan on 2021/2/9.
//

import Foundation

extension Solution {
    
    //直接利用二分思想
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = left + (right - left + 1) / 2
            
            if nums[mid] == target {
                return mid
            }
            
            if nums[mid] < nums.first! {
                if nums[mid] < target && nums.last! >= target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            } else {
                if nums[mid] > target && nums.first! <= target {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
        }
        
        return -1
    }
    
    /*
    //先拆分，再二分
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var index = -1
        var middle = 0
        
        while left < right {
            let mid = left + (right - left + 1) / 2
            
            if nums[mid - 1] > nums[mid] {
                middle = mid
                break
            }
            
            if (nums.first! < nums[mid]) {
                left = mid
            } else {
                right = mid
            }
        }
        
        if  middle > 0 && nums.first! <= target && target <= nums[middle - 1] {
            left = 0
            right = middle - 1
        } else if nums[middle] <= target && target <= nums.last! {
            left = middle
            right = nums.count - 1
        } else {
            return -1
        }
        
        while left <= right {
            let mid = left + (right - left + 1) / 2
            
            if nums[mid] == target {
                index = mid
                break
            }
            if (nums[mid] < target) {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return index
    }
    */
}
