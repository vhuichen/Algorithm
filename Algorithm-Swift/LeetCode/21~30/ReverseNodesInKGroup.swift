//
//  ReverseNodesInKGroup.swift
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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        if k < 2 { return head }
        /*
        @inline(__always)
        func reverseList(_ list: ListNode) -> ListNode {
            let head = list
            var list = list.next
            
            while list != nil {
                let temp0 = head.next
                head.next = list
                
                let temp1 = list!.next
                
                list!.next = temp0
                
                list = temp1
            }
            
            return head
        }
         
        var num = k
        let list = ListNode(-1)
        var listTail = list
        var tail = head
        
        while num > 0 && tail != nil {
            listTail.next = tail
            listTail = tail!
            
            tail = tail!.next
            num -= 1
        }
        
        if num == 0 {
            listTail.next = nil
            let last = list.next
            let reverse = reverseList(list)
            
            last!.next = reverseKGroup(tail, k)
            
            return reverse.next
        }
        
        return head
 */
        let head = ListNode(0, head)
        
        var end:ListNode? = head.next
        var start:ListNode? = head
        
        //0 1 2 3 4 5
        while end != nil {
            var num = k
            while num > 0 && end != nil{
                end = end?.next
                num -= 1
            }
            if num == 0 {
                var left = start!.next
                var right = end
                while num < k {
                    let temp = left!.next
                    left!.next = right
                    right = left
                    left = temp
                    
                    num += 1
                    
                    if num == 1 {
                        start = right
                    }
                }
                start?.next = right
                end = start?.next
            }
        }
        
        return head.next
    }
}
