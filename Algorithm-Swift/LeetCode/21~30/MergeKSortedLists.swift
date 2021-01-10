//
//  MergeKSortedLists.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/9.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
extension Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        /*
        func mergeTwo(_ l1:ListNode? , _ l2:ListNode?) -> ListNode? {
            if l1 == nil { return l2 }
            if l2 == nil { return l1 }
            
            if l1!.val < l2!.val {
                l1!.next = mergeTwoLists(l1?.next, l2)
                return l1
            } else {
                l2!.next = mergeTwoLists(l1, l2?.next)
                return l2
            }
        }
        
        func merge(_ lists: [ListNode?], _ l:Int, _ r:Int) -> ListNode? {
            if l == r { return lists[l] }
            if l > r { return nil }
            let mid = (l + r) >> 1
            
            return mergeTwo(merge(lists, l, mid), merge(lists, mid + 1, r))
        }
        
        return merge(lists, 0, lists.count - 1)
 */
        
        guard lists.count > 0 else { return nil }
        
        let head = ListNode(0)
        var headTail = head
        
        let smallHead = Head(lists)
        
        while let item = smallHead.pop() {
            headTail.next = item
            headTail = item
        }
        
        return head.next
    }
}

fileprivate class Head {
    private var array:[ListNode?] = [nil]
    
    public var max:Int = 0
    public var currentCount:Int = 0
    
    init(_ nums: Int) {
        self.array = [ListNode?](repeating: nil, count: nums)
        self.max = nums
        self.currentCount = 0
    }
    
    init(_ array: [ListNode?]) {
        self.array = array
        self.max = array.count
        self.currentCount = array.count
        
        sort(self.array, self.currentCount)
    }
    
    func push(_ item: ListNode?) {
        guard let item = item else { return }
        
        array[currentCount] = item
        currentCount += 1
        
        sort(array, currentCount)
    }
    
    func pop() -> ListNode? {
        guard let item = array[0] else { return nil }
        
        if item.next == nil {
            array[0] = array[currentCount - 1]
            array[currentCount - 1] = nil
            currentCount -= 1
        } else {
            array[0] = item.next
        }
        
        sort(array, currentCount)
        
        return item
    }
    
    func sort(_ arr:[ListNode?], _ len:Int) {
        var i = len / 2 - 1
        
        while i >= 0 {
            /* 左节点 */
            let leftIndex = 2 * i + 1
            let leftIndexNextLeft = 2 * leftIndex + 1
            let leftIndexNextRight = leftIndexNextLeft + 1
            if leftIndex < len {
                let root = array[i]?.val ?? Int(INT32_MAX)
                let left = array[leftIndex]?.val ?? Int(INT32_MAX)
                if root > left {
                    let temp = array[i]
                    array[i] = array[leftIndex]
                    array[leftIndex] = temp
                    
                    var flag = false
                    if leftIndexNextLeft < len {
                        let root = array[leftIndex]?.val ?? Int(INT32_MAX)
                        let left = array[leftIndexNextLeft]?.val ?? Int(INT32_MAX)
                        if root > left {
                            flag = true
                        }
                    }
                    if leftIndexNextRight < len {
                        let root = array[leftIndex]?.val ?? Int(INT32_MAX)
                        let right = array[leftIndexNextRight]?.val ?? Int(INT32_MAX)
                        if root > right {
                            flag = true
                        }
                    }
                    if flag {
                        sort(arr, len)
                    }
                }
                
            }
            
            /* 右节点 */
            let rightIndex = leftIndex + 1
            let rightIndexNextLeft = 2 * rightIndex + 1
            let rightIndexNextRight = rightIndexNextLeft + 1
            
            if rightIndex < len {
                let root = array[i]?.val ?? Int(INT32_MAX)
                let right = array[rightIndex]?.val ?? Int(INT32_MAX)
                
                if root > right {
                    let temp = array[i]
                    array[i] = array[rightIndex]
                    array[rightIndex] = temp
                    
                    var flag = false
                    
                    if rightIndexNextLeft < len {
                        let root = array[rightIndex]?.val ?? Int(INT32_MAX)
                        let left = array[rightIndexNextLeft]?.val ?? Int(INT32_MAX)
                        if root > left {
                            flag = true
                        }
                    }
                    if rightIndexNextRight < len {
                        let root = array[rightIndex]?.val ?? Int(INT32_MAX)
                        let right = array[rightIndexNextRight]?.val ?? Int(INT32_MAX)
                        if root > right {
                            flag = true
                        }
                    }
                    if flag {
                        sort(arr, len)
                    }
                }
            }
            i -= 1
        }
    }
    
}
