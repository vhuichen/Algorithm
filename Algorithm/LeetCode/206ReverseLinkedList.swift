//
//  206ReverseLinkedList.swift
//  Algorithm
//
//  Created by vchan on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
extension Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        /*
        /* 迭代 */
        var pre:ListNode? = nil
        var current = head
        
        while current != nil {
            let temp = current?.next
            current?.next = pre
            pre = current
            current = temp
        }
        
        return pre
        */
        
        return reverse(head, nil)
    }
    
    /* 递归 */
    func reverse(_ head: ListNode?, _ next: ListNode?) -> ListNode? {
        guard let head = head else { return next }
        
        let temp = head.next
        head.next = next
        
        return reverse(temp, head)
    }
}
