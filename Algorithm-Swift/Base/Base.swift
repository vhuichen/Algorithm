//
//  Base.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/10.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    //LeetCode
}

class SmallHead {
    private var array:[ListNode?] = [nil]
    
    public var max:Int = 0
    public var currentCount:Int = 0
    
    init(_ nums: Int) {
        self.array = [ListNode?](repeating: nil, count: nums)
        self.max = nums
        self.currentCount = 0
    }
    
    func push(_ item: ListNode?) {
        guard let item = item else { return }
        
        array[currentCount] = item
        
        currentCount += 1
        
        sort(array, currentCount)
    }
    
    func pop() -> ListNode? {
        guard let item = array[0] else { return nil }
        
        array[0] = array[currentCount - 1]
        array[currentCount - 1] = nil
        
        currentCount -= 1
        
        sort(array, currentCount)
        
        return item
    }
    
    func sort(_ arr:[ListNode?], _ len:Int) {
        var i = len / 2 - 1
        
        while i >= 0 {
            /* 左节点 */
            if 2 * i + 1 < len {
                let root = array[i]?.val ?? Int(INT32_MAX)
                let left = array[2 * i + 1]?.val ?? Int(INT32_MAX)
                if root > left {
                    let temp = array[i]
                    array[i] = array[2 * i + 1]
                    array[2 * i + 1] = temp
                    
                    if 2 * (2 * i + 1) + 1 < len {
                        let root = array[2 * i + 1]?.val ?? Int(INT32_MAX)
                        let left = array[2 * (2 * i + 1) + 1]?.val ?? Int(INT32_MAX)
                        
                        if root > left {
                            sort(arr, len)
                        }
                    }
                    
                    if 2 * (2 * i + 1) + 2 < len {
                        let root = array[2 * i + 1]?.val ?? Int(INT32_MAX)
                        let right = array[2 * (2 * i + 1) + 2]?.val ?? Int(INT32_MAX)
                        
                        if root > right {
                            sort(arr, len)
                        }
                    }
                    
                }
                
            }
            
            /* 右节点 */
            if 2 * i + 2 < len {
                let root = array[i]?.val ?? Int(INT32_MAX)
                let right = array[2 * i + 2]?.val ?? Int(INT32_MAX)
                
                if root > right {
                    let temp = array[i]
                    array[i] = array[2 * i + 2]
                    array[2 * i + 2] = temp
                    
                    if 2 * (2 * i + 2) + 1 < len {
                        let root = array[2 * i + 2]?.val ?? Int(INT32_MAX)
                        let left = array[2 * (2 * i + 2) + 1]?.val ?? Int(INT32_MAX)
                        
                        if root > left {
                            sort(arr, len)
                        }
                    }
                    
                    if 2 * (2 * i + 2) + 2 < len {
                        let root = array[2 * i + 2]?.val ?? Int(INT32_MAX)
                        let right = array[2 * (2 * i + 2) + 2]?.val ?? Int(INT32_MAX)
                        
                        if root > right {
                            sort(arr, len)
                        }
                    }
                }
                
            }
            
            i -= 1
        }
    }
    
}
