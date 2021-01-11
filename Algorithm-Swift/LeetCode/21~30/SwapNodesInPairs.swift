//
//  SwapNodesInPairs.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/11.
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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        /*
        /* 递归 */
        guard let first = head, let second = head?.next else {
            return head
        }
        
        first.next = swapPairs(second.next)
        second.next = first
        
        return second
        */
        
        /* 迭代 */
        let result = ListNode(-1)
        var resultTail = result
        var tail = head
        
        while let first = tail, let second = tail?.next {
            tail = second.next
            resultTail.next = second
            second.next = first
            resultTail = first
        }
        
        resultTail.next = tail
        
        return result.next
    }
}
