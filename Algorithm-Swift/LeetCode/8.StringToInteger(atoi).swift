//
//  8.StringToInteger(atoi).swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/29.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func myAtoi(_ s: String) -> Int {
        var value = 0
        var isStart = false
        var flag = 1
        
        for char in s {
            if isStart {
                if char >= "0" && char <= "9" {
                    value = value * 10 + Int(char.asciiValue! - 48) * flag
                    if value < Int32.min {
                        return Int(Int32.min)
                    } else if (value > Int32.max) {
                        return Int(Int32.max)
                    }
                } else {
                    break
                }
            } else if char == "+" {
                isStart = true
            } else if char == "-" {
                isStart = true
                flag = -1
            } else if char >= "0" && char <= "9" {
                isStart = true
                value = Int(char.asciiValue! - 48)
            } else if char != " " {
                break
            }
        }
        
        return value
    }
}
