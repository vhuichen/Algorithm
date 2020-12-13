//
//  LongestSubstring.swift
//  LeetCode-Swift
//
//  Created by chenhui on 2020/12/11.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import UIKit

/// 3. 无重复字符的最长子串
extension Solution {
    /*
     利用哈希数组记录字符的位置，移动左右指针
     */
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count < 2 { return s.count }
        
        var length = 0
        var left = -1
        var hashArray = [Int](repeating: -1, count: 128)
        
        for (index, unicodeScalar) in s.unicodeScalars.enumerated() {
            let unicode = Int(unicodeScalar.value)
            left = max(left, hashArray[unicode])
            length = max(length, index - left)
            hashArray[unicode] = index
        }
        
        return length
        
        /*
        if s.count < 2 { return s.count }
        
        var length = 0
        var left = -1
        let unicode = s.unicodeScalars.map { Int($0.value) }
        var hashArray = [Int](repeating: -1, count: 128)
        
        for index in 0..<unicode.count {
            left = max(left, hashArray[unicode[index]])
            hashArray[unicode[index]] = index
            length = max(length, index - left)
        }
        
        return length;
        */
    }
    
}
