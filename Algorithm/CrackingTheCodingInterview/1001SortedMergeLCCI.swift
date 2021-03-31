//
//  1001SortedMergeLCCI.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation

//程序员面试金典 10.01
//等同于LeetCode88
extension Solution {
    /*
    func merge(_ A: inout [Int], _ m: Int, _ B: [Int], _ n: Int) {
        var first = m - 1
        var second = n - 1
        var end = m + n - 1
        
        while second >= 0 && first >= 0 {
            if A[first] > B[second] {
                A[end] = A[first]
                first -= 1
            } else {
                A[end] = B[second]
                second -= 1
            }
            end -= 1
        }
        
        while second >= 0 {
            A[second] = B[second]
            second -= 1
        }
    }
    */
}
