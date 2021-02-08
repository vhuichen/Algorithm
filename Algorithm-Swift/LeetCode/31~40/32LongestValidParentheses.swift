//
//  32LongestValidParentheses.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/8.
//

import Foundation

extension Solution {
    
    
    
    
    
    
    /*
    //栈
    func longestValidParentheses(_ s: String) -> Int {
        var stack = [Int]()
        var longest = 0
        
        stack.append(-1)
        for (i, item) in s.enumerated() {
            if item == "(" {
                stack.append(i)
            } else {
                stack.removeLast()
                if stack.isEmpty {
                    stack.append(i)
                } else {
                    longest = max(longest, i - stack.last!)
                }
            }
        }
        
        return longest
    }
    */
    
    /*
    func longestValidParentheses(_ s: String) -> Int {
        var left = 0
        var right = 0
        var longest = 0
        
        for item in s {
            if item == "(" {
                left += 1
            } else {
                right += 1
            }
            
            if left == right {
                longest = max(longest, left * 2)
            } else if (left < right) {
                left = 0
                right = 0
            }
        }
        
        left = 0
        right = 0
        for item in s.reversed() {
            if item == "(" {
                left += 1
            } else {
                right += 1
            }
            
            if left == right {
                longest = max(longest, left * 2)
            } else if (right < left) {
                left = 0
                right = 0
            }
        }
        
        return longest
    }
    */
}
