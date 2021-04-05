//
//  136SingleNumber.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        
        for item in nums {
            result ^= item
        }
        
        return result
    }
}
