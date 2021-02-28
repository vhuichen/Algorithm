//
//  66PlusOne.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation

extension Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var index = digits.count - 1
        
        while index >= 0 {
            if digits[index] == 9 {
                digits[index] = 0
                if index == 0 {
                    digits = [1] + digits
                }
                index -= 1
            } else {
                digits[index] += 1
                break
            }
        }
        return digits
    }
}
