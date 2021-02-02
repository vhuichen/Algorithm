//
//  ListNode.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/31.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class CommonListNode {
    class func list(_ array:[Int]) -> ListNode? {
        guard array.count > 0 else { return nil }
        
        let heap = ListNode(-1)
        var tail = heap
        
        for item in array {
            tail.next = ListNode(item)
            tail = tail.next!
        }
        
        return heap.next
    }
    
    class func isEqual(_ list1:ListNode?, _ list2:ListNode?) -> Bool {
        var list1 = list1
        var list2 = list2
        
        while list1 != nil && list2 != nil {
            if list1!.val != list2!.val { break }
            
            list1 = list1!.next
            list2 = list2!.next
        }
        
        return list1 == nil && list2 == nil
    }
}
