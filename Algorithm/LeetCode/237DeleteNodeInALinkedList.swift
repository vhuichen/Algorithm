//
//  237DeleteNodeInALinkedList.swift
//  Algorithm
//
//  Created by vchan on 2021/1/31.
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
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node!.next = node!.next!.next
    }
}
