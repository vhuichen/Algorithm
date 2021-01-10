//
//  19.RemoveNthNodeFromEndOfList.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/8.
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard head != nil else { return head }
        
        let head: ListNode = ListNode(0, head)
        var fast = head
        var slow = fast
        
        for _ in 0..<n {
            fast = fast.next!
        }
        
        while (fast.next != nil) {
            fast = fast.next!
            slow = slow.next!
        }
        
        slow.next = slow.next!.next
        
        return head.next
    }
}
