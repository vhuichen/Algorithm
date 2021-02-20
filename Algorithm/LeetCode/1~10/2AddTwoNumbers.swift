//
//  AddTwoNumbers.swift
//  Algorithm
//
//  Created by vchan on 2020/12/7.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

/// 2. 两数相加
extension Solution {
    /*
     需要考虑向前进位的情况
     */
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        let head = ListNode()
        var lastNode = head
        var l1Tmp = l1
        var l2Tmp = l2
        var flag:Int = 0
        var val:Int = 0
        
        while ((l1Tmp != nil)  || (l2Tmp != nil) || (flag > 0)) {
            val = (l1Tmp?.val ?? 0) + (l2Tmp?.val ?? 0) + flag
            
            flag = val / 10
            val = val % 10
            
            lastNode.next = ListNode(val)
            lastNode = lastNode.next!
            
            l1Tmp = l1Tmp?.next
            l2Tmp = l2Tmp?.next
        }
        
        return head.next
    }
}


