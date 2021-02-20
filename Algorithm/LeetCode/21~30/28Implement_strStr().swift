//
//  28.Implement strStr().swift
//  Algorithm
//
//  Created by vchan on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !needle.isEmpty else { return 0 }
        
        let haystackArray = Array(haystack)
        let needleArray = Array(needle)
        
        if haystackArray.count < needleArray.count { return -1 }
        
        for i in 0...(haystackArray.count - needleArray.count) {
            var isEqual = true
            
            for j in 0..<needleArray.count {
                if needleArray[j] != haystackArray[i + j] {
                    isEqual = false
                    break
                }
            }
            
            if isEqual { return i }
        }
        return -1
    }
}
