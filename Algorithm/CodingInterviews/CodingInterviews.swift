//
//  CodingInterviews.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    //剑指 Offer 03. 数组中重复的数字
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var hash = [Bool](repeating: false, count: nums.count)
        
        for i in 0..<nums.count {
            let num = nums[i]
            if hash[num] {
                return num
            } else {
                hash[num] = true
            }
        }
        
        return -1
    }
    
    func findRepeatNumber1(_ nums: [Int]) -> Int {
        var nums = nums
        
        for i in 0..<nums.count {
            while i != nums[i] {
                if nums[i] == nums[nums[i]] {
                    return nums[i]
                }
                let temp = nums[i]
                nums[i] = nums[temp]
                nums[temp] = temp
            }
        }
        
        return -1
    }
}

extension Solution {
    //剑指 Offer 22. 链表中倒数第k个节点
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var slow = head
        var fast = head
        
        for _ in 1..<k {
            fast = fast?.next
        }
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next
        }
        
        return slow
    }
}

extension Solution {
    //剑指 Offer 57 - II. 和为s的连续正数序列
    func findContinuousSequence(_ target: Int) -> [[Int]] {
        var results = [[Int]]()
        var i = 1
        let end = target / 2
        
        while i <= end {
            var sum = i
            var last = i
            while sum < target {
                last += 1
                sum += last
            }
            if sum == target {
                results.append([Int](i...last))
                i += 2
            } else {
                i += 1
            }
        }
        
        return results
    }
    
    func findContinuousSequence1(_ target: Int) -> [[Int]] {
        var results = [[Int]]()
        var left = 1
        var right = 1
        let leftMax = target / 2
        let rightMax = leftMax + 1
        var sum = 1
        
        while left < right && right <= rightMax  {
            if sum == target {
                results.append([Int](left...right))
                sum -= left
                left += 1
                
                right += 1
                sum += right
            } else if (sum < target) {
                right += 1
                sum += right
            } else {
                sum -= left
                left += 1
            }
        }
        
        return results
    }
    
    func findContinuousSequence3(_ target: Int) -> [[Int]] {
        var results = [[Int]]()
        
        for n in 2...(target / 2) {
            let nStart = target - n * (n - 1) / 2
            if nStart <= 0 { break }
            
            if nStart % n == 0 {
                let start = nStart / n
                results.insert([Int](start..<start + n), at: 0)
            }
        }
        
        return results
    }
}

