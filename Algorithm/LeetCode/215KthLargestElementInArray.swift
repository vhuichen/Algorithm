//
//  215KthLargestElementInArray.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        let target = nums.count - k
        
        func findKthLargest(_ left: Int, _ right: Int) -> Int {
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
            
            if tLeft == target {
                return nums[tLeft]
            } else if (tLeft < target) {
                return findKthLargest(tLeft + 1, right)
            } else {
                return findKthLargest(left, tLeft - 1)
            }
        }
        
        return findKthLargest(0, nums.count - 1)
    }
    
    func findKthLargest1(_ nums: [Int], _ k: Int) -> Int {
        let smallTopPile = SmallTopPile(Array(nums[..<k]))
        
        for item in nums[k...] {
            smallTopPile.push(item)
        }
        
        return smallTopPile.top()
    }
}

class SmallTopPile {
    private var array:[Int] = [Int]()
    private var arrayCount = 0
    
    init(_ array: [Int]) {
        self.array = array
        self.arrayCount = array.count
        
        var i = self.arrayCount / 2 - 1
        while i >= 0 {
            sortDown(i)
            i -= 1;
        }
    }
    
    func push(_ num: Int) {
        if array[0] < num {
            array[0] = num
            sortDown(0)
        }
    }
    
    func top() -> Int {
        array[0]
    }
    
    func sortDown(_ start: Int) {
        let leftIndex = start * 2 + 1
        let rightIndex = leftIndex + 1
        
        let rootValue = array[start]
        let leftValue = leftIndex < self.arrayCount ? array[leftIndex] : Int(INT32_MAX)
        let rightValue = rightIndex < self.arrayCount ? array[rightIndex] : Int(INT32_MAX)
        
        if leftValue < rootValue && leftValue < rightValue {
            (array[start], array[leftIndex]) = (array[leftIndex], array[start])
            sortDown(leftIndex)
        } else if (rightValue < rootValue && rightValue <= leftValue) {
            (array[start], array[rightIndex]) = (array[rightIndex], array[start])
            sortDown(rightIndex)
        }
    }
}
