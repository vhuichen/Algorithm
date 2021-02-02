//
//  Base.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/10.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

class Solution {
    //LeetCode
}

class SmallHeap {
    private var array:[ListNode?] = [nil]
    public var currentCount:Int = 0
    
    init(_ array: [ListNode?]) {
        self.array = array
        self.currentCount = array.count
        
        var i = self.currentCount / 2 - 1
        while i >= 0 {
            sortDown(self.array, i)
            i -= 1;
        }
    }
    
    func pop() -> ListNode? {
        guard let item = array[0] else { return nil }
        
        if item.next == nil {
            array[0] = array[currentCount - 1]
            array[currentCount - 1] = nil
            currentCount -= 1
        } else {
            array[0] = item.next
        }
        
        sortDown(array, 0)
        
        return item
    }
    
    @inline(__always)
    func getVal(_ i:Int) -> Int {
        guard i < currentCount, let list = array[i] else { return Int(INT32_MAX) }
        return list.val
    }
    
    func sortDown(_ arr:[ListNode?], _ start:Int) {
        let leftIndex = start * 2 + 1
        let rightIndex = leftIndex + 1
        
        let rootValue = getVal(start)
        let leftValue = getVal(leftIndex)
        let rightValue = getVal(rightIndex)
        
        if leftValue < rootValue && leftValue < rightValue {
            let temp = array[start]
            array[start] = array[leftIndex]
            array[leftIndex] = temp
            
            sortDown(arr, leftIndex)
        } else if (rightValue < rootValue && rightValue <= leftValue) {
            let temp = array[start]
            array[start] = array[rightIndex]
            array[rightIndex] = temp
            
            sortDown(arr, rightIndex)
        }
    }
}
