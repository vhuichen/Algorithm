//
//  50Pow_x_n.swift
//  Algorithm
//
//  Created by vchan on 2021/4/4.
//

import Foundation

extension Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if x == 0 { return 0 }

        var n = n
        var base = x
        if n < 0 {
            n = -n
            base = 1.0 / base
        }
        if base == 1.0 {
            return 1.0
        } else if base == -1.0 {
            return (n % 2) == 0 ? 1.0 : -1.0
        }
        
        var result:Double = 1
        while n > 0 {
            if n & 1 != 0 {
                result *= base
            }
            n = n >> 1
            base *= base
        }

        return result
    }
}
