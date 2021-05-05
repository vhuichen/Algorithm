//
//  92ReverseLinkedListII.swift
//  Algorithm
//
//  Created by vchan on 2021/5/5.
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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        let result = ListNode(0, head)
        var leftPre: ListNode? = result
        
        for _ in 1..<left {
            leftPre = leftPre?.next
        }
        //0,1,2,3,4,5
        //2,4
        //0,2,1,3,4,5
        //0,3,2,1,4,5
        let rightNode: ListNode? = leftPre?.next
        for _ in left..<right {
            let temp = leftPre?.next
            leftPre?.next = rightNode?.next
            rightNode?.next = rightNode?.next?.next
            leftPre?.next?.next = temp
        }
        
        return result.next
    }
}
