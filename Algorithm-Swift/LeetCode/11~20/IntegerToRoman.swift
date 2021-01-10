//
//  12.IntegerToRoman.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/4.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func intToRoman(_ num: Int) -> String {
        /* 贪心 */
        var val = ""
        var currentNum = num
        
        let nums = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let char = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        
        for i in 0..<nums.count {
            if currentNum >= nums[i] {
                for _ in 0..<(currentNum / nums[i]) {
                    val.append(char[i])
                }
                currentNum = currentNum % nums[i]
            }
        }
        
        return val
        
        
        /*
        var val = ""
        let thousands = ["", "M", "MM", "MMM"]
        let hundreds = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
        let tens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
        let ones = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
        
        val.append(thousands[num / 1000])
        val.append(hundreds[num % 1000 / 100])
        val.append(tens[num % 100 / 10])
        val.append(ones[num % 10])
        
        return val
        */
    }
}
