//
//  21.MergeTwoSortedLists.swift
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        /*
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        var list:ListNode?
        var listLast:ListNode?
        var list1Last:ListNode?
        var list2Last:ListNode?
        
        if l1!.val < l2!.val {
            list = l1
            list2Last = l2
        } else {
            list = l2
            list2Last = l1
        }
        list1Last = list!.next
        listLast = list
        
        while let list1 = list1Last, let list2 = list2Last {
            if list1.val < list2.val {
                listLast!.next = list1
                listLast = list1
                list1Last = list1.next
            } else {
                listLast!.next = list2
                listLast = list2
                list2Last = list2.next
            }
        }
        
        if list1Last != nil {
            listLast!.next = list1Last
        } else if list2Last != nil {
            listLast!.next = list2Last
        }
        
        return list
        */
        
        var list1 = l1
        var list2 = l2
        let list = ListNode(0)
        var last = list
        
        while list1 != nil, list2 != nil {
            if list1!.val < list2!.val {
                last.next = list1
                last = list1!
                list1 = list1!.next
            } else {
                last.next = list2
                last = list2!
                list2 = list2!.next
            }
        }
        
        if list1 != nil {
            last.next = list1
        } else if list2 != nil {
            last.next = list2
        }
        
        return list.next
    }
}
