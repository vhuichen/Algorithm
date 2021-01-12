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
        /* 分治 */
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
        
        /*
        //用小顶堆实现的优先级队列，LeetCode 提交超时，但可以参考实现思路
        guard lists.count > 0 else { return nil }
        
        let head = ListNode(0)
        var headTail = head
        
        let smallHead = SmallTopHeap(lists)
        
        while let item = smallHead.pop() {
            headTail.next = item
            headTail = item
        }
        
        return head.next
        */
    }
}

fileprivate class SmallTopHeap {
    private var array:[ListNode?] = [nil]
    public var currentCount:Int = 0
    
    init(_ array: [ListNode?]) {
        self.array = array
        self.currentCount = array.count
        
        var i = self.currentCount / 2 - 1
        while i >= 0 {
            sortDown(self.array, i)
            i -= 1;
        }
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
        
        sortDown(array, 0)
        
        return item
    }
    
    @inline(__always)
    func getVal(_ i:Int) -> Int {
        guard i < currentCount, let list = array[i] else { return Int(INT32_MAX) }
        return list.val
    }
    
    func sortDown(_ arr:[ListNode?], _ start:Int) {
        let leftIndex = start * 2 + 1
        let rightIndex = leftIndex + 1
        
        let rootValue = getVal(start)
        let leftValue = getVal(leftIndex)
        let rightValue = getVal(rightIndex)
        
        if leftValue < rootValue && leftValue < rightValue {
            let temp = array[start]
            array[start] = array[leftIndex]
            array[leftIndex] = temp
            
            sortDown(arr, leftIndex)
        } else if (rightValue < rootValue && rightValue <= leftValue) {
            let temp = array[start]
            array[start] = array[rightIndex]
            array[rightIndex] = temp
            
            sortDown(arr, rightIndex)
        }
    }
}
