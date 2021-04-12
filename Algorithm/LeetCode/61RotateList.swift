//
//  61RotateList.swift
//  Algorithm
//
//  Created by vchan on 2021/4/12.
//

import Foundation

extension Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil || k == 0 { return head }
        
        var length = 1
        var pre = head
        while pre!.next != nil {
            length += 1
            pre = pre!.next
        }
        
        var step = k % length
        if step == 0 { return head }
        
        step = length - step - 1
        
        pre?.next = head
        
        var last = head
        while step > 0 {
            step -= 1
            last = last?.next
        }
        
        let headNew = last?.next
        last?.next = nil
        
        return headNew
    }
}
