//
//  9.PalindromeNumber.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/31.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        else if x < 10 { return true }
        else if x % 10 == 0 { return false }
        
        var left = x
        var right = 0
        
        while left > right {
            right = right * 10 + left % 10
            left = left / 10
        }
        
        return (left == right) || (left == right / 10)
    }
}
