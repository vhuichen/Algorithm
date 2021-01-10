//
//  6.ZigZagConversion.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/29.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if (numRows == 1) || (s.count <= numRows) { return s }
        
        var array = [String](repeating: "", count: numRows)
        var flag = -1
        var row = 0
        
        for char in s {
            array[row].append(char)
            
            if (row == 0) || (row == numRows - 1) {
                flag = -flag
            }
            row += flag
        }
        
        return array.joined()
    }
}
