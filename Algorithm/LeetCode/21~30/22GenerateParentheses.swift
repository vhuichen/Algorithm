//
//  22.GenerateParentheses.swift
//  Algorithm
//
//  Created by vchan on 2021/1/9.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [] }
        
        var val = [String]()
        
        func backtrack(_ left:Int, _ right:Int, _ aStr: String) {
            if left == 0 && right == 0 {
                val.append(aStr)
                return
            }
            
            if (left > right) { return }
            
            if left > 0 {
                backtrack(left - 1, right, aStr + "(")
            }
            
            if right > 0 {
                backtrack(left, right - 1, aStr + ")")
            }
        }
        
        backtrack(n, n, "")
        
        return val
    }
}
