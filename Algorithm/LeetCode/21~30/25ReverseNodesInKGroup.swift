//
//  ReverseNodesInKGroup.swift
//  Algorithm
//
//  Created by vchan on 2021/1/11.
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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head?.next == nil { return head }
        var tail = head
        
        for _ in 1..<k {
            tail = tail?.next
            if tail == nil { return head }
        }
        
        let temp = tail?.next
        tail?.next = nil
        let reverse = reverseList(head)
        
        head?.next = reverseKGroup(temp, k)
        
        return reverse
    }
    
}
