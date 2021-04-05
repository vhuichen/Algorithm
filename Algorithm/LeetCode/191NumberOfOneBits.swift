//
//  191NumberOfOneBits.swift
//  Algorithm
//
//  Created by vchan on 2021/4/4.
//

import Foundation

extension Solution {
    func hammingWeight(_ n: Int) -> Int {
        var sum = 0
        var n = n
        while n > 0 {
            sum += 1
            n = n & (n - 1)
        }
        return sum
    }
}
