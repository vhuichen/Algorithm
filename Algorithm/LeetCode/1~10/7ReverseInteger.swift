//
//  7.ReverseInteger.swift
//  Algorithm
//
//  Created by vchan on 2020/12/29.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var val = 0
        
        let max = Int32.max
        let min = Int32.min
        
        while x != 0 {
            val = val * 10 + x % 10
            
            if val > max || val < min { return 0 }
            
            x = x / 10
        }
        
        return val
    }
}
