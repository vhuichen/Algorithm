//
//  AddTwoNumbers.swift
//  LeetCode-Swift
//
//  Created by chenhui on 2020/12/7.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

/// 2. 两数相加
extension Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        
        var result:ListNode? = nil
        var resultTmp:ListNode?
        var l1Tmp = l1
        var l2Tmp = l2
        var carryNumber:Int = 0
        var value:Int = 0
        
        while ((l1Tmp != nil)  || (l2Tmp != nil) || (carryNumber > 0)) {
            value = (l1Tmp?.val ?? 0) + (l2Tmp?.val ?? 0) + carryNumber
            
            carryNumber = value / 10
            value = value % 10
            
            if result == nil {
                result = ListNode(value)
                resultTmp = result
            } else {
                resultTmp!.next = ListNode(value)
                resultTmp = resultTmp!.next
            }
            l1Tmp = l1Tmp?.next
            l2Tmp = l2Tmp?.next
        }
        
        return result
    }
}


