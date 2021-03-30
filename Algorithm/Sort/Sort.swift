//
//  Sort.swift
//  Algorithm
//
//  Created by vchan on 2021/3/7.
//

import Foundation

class QuickSort {
    class func sort1(_ nums: inout [Int]) {
        func sort(_ left: Int, _ right: Int) {
            guard left < right else { return }
            
            var tLeft = left
            var tRight = right
            let middle = (left + right) / 2
            //左边界作为参考点
            (nums[tLeft], nums[middle]) = (nums[middle], nums[tLeft])
            
            let pivot = nums[left]
            
            while tLeft < tRight {
                //由于左边界作为参考点，这里必须右边开始
                while tLeft < tRight && nums[tRight] >= pivot {
                    tRight -= 1
                }
                nums[tLeft] = nums[tRight]
                
                while tLeft < tRight && nums[tLeft] <= pivot {
                    tLeft += 1
                }
                nums[tRight] = nums[tLeft]
            }
            nums[tLeft] = pivot
            
            sort(left, tLeft - 1)
            sort(tLeft + 1, right)
        }
        return sort(0, nums.count - 1)
    }
    
    class func sort2(_ nums: inout [Int]) {
        func sort(_ left: Int, _ right: Int) {
            guard left < right else { return }
            
            var tLeft = left
            var tRight = right
            var i = tLeft + 1
            let middle = (left + right) / 2
            //左边界作为参考点
            (nums[tLeft], nums[middle]) = (nums[middle], nums[tLeft])
            let pivot = nums[left]
            
            while tLeft < tRight {
                if nums[i] > pivot {
                    (nums[i], nums[tRight]) = (nums[tRight], nums[i])
                    tRight -= 1
                } else {
                    nums[tLeft] = nums[i]
                    tLeft += 1
                    i += 1
                }
            }
            nums[tLeft] = pivot
            
            sort(left, tLeft - 1)
            sort(tLeft + 1, right)
        }
        return sort(0, nums.count - 1)
    }
    
    class func sort3(_ nums: inout [Int]) {
        func sort(_ left: Int, _ right: Int) {
            guard left < right else { return }
            //
            var pivot = left
            var i = left + 1
            while i <= right {
                if nums[i] < nums[left] {
                    pivot += 1
                    (nums[i], nums[pivot]) = (nums[pivot], nums[i])
                }
                i += 1
            }
            (nums[left], nums[pivot]) = (nums[pivot], nums[left])
            
            sort(left, pivot - 1)
            sort(pivot + 1, right)
        }
        return sort(0, nums.count - 1)
    }
}
