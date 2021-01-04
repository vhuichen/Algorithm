//
//  13.RomanToInteger.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/4.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation


extension Solution {
    func romanToInt(_ s: String) -> Int {
        let romanArray = Array(s)
        
        let roman:[Character : Int] = ["M" : 1000, "D" : 500, "C" : 100, "L" : 50, "X" : 10, "V" : 5, "I" : 1]
        
        var val = 0
        
        for i in 0..<(romanArray.count - 1) {
            let current = roman[romanArray[i]]!
            let next = roman[romanArray[i + 1]]!
            if current < next {
                val -= current
            } else {
                val += current
            }
        }
        
        val += roman[romanArray[romanArray.count - 1]]!
        
        return val
    }
}
