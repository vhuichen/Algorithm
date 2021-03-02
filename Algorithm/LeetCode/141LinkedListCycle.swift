//
//  141LinkedListCycle.swift
//  Algorithm
//
//  Created by vchan on 2021/3/2.
//

import Foundation

extension Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next
        
        while slow != nil && fast != nil {
            if slow === fast {
                return true
            }
            slow = slow!.next
            fast = fast!.next?.next
        }
        return false
    }
}
