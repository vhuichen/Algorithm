//
//  29DivideTwoIntegers.swift
//  Algorithm
//
//  Created by vchan on 2021/1/13.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    /* 不能转成正数处理，32位的机器下会溢出*/
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        var dividend = dividend
        var divisor = divisor
        var isDividendPositive = false
        var isDivisorPositive = false
        
        if dividend > 0 {
            dividend = -dividend
            isDividendPositive = true
        }
        
        if divisor > 0 {
            divisor = -divisor
            isDivisorPositive = true
        }
        
        var val = 0
        if divisor == -1 {
            val = -dividend
        } else {
            while dividend <= divisor {
                var count = 1
                var last = divisor
                
                while dividend <= last + last {
                    last = last + last
                    count = count + count
                }
                dividend = dividend - last
                val += count
            }
        }
        
        if isDividendPositive != isDivisorPositive {
            val = -val
        }
        
        return min(val, Int(INT32_MAX))
    }
}
