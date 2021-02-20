//
//  14.LongestCommonPrefix.swift
//  Algorithm
//
//  Created by vchan on 2021/1/4.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation


extension Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return "" }
        if strs.count == 1 { return strs[0] }
        
        var strsArray = [[Character]]()
        var minCount:Int = Int(INT32_MAX)
        var perfix = ""
        
        for str in strs {
            let array = Array(str)
            strsArray.append(array)
            minCount = min(minCount, array.count)
        }
        
        let array0 = strsArray[0]
        for i in 0..<minCount {
            var isSame = true
            
            for j in 1..<strsArray.count {
                if array0[i] != strsArray[j][i] {
                    isSame = false
                    break
                }
            }
            
            if isSame {
                perfix.append(array0[i])
            } else {
                break
            }
        }
        
        return perfix
    }
}
