//
//  LongestPalindrome.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/14.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func longestPalindrome(_ s: String) -> String {
        /*
         动态规划
         */
        if s.count < 2 { return s }
        
        let unicodeScalars = s.unicodeScalars.map { $0.value }
        var maxLocation = 0
        var maxLength = 1
        
        var table = [[Bool]](repeating: [Bool](repeating: false, count: unicodeScalars.count), count: unicodeScalars.count)
        
        for i in 0..<(unicodeScalars.count - 1) {
            table[i][i] = true
            if unicodeScalars[i] == unicodeScalars[i + 1] {
                table[i][i + 1] = true
                maxLocation = i
                maxLength = 2
            }
        }
        
        if unicodeScalars.count > 2 {
            for len in 3...unicodeScalars.count {
                for left in 0...unicodeScalars.count - len {
                    let right = left + len - 1
                    if unicodeScalars[left] == unicodeScalars[right] && table[left + 1][right - 1] {
                        table[left][right] = true
                        maxLocation = left
                        maxLength = len
                    }
                }
            }
        }
        
        let start = s.index(s.startIndex, offsetBy: maxLocation)
        let end = s.index(start, offsetBy: maxLength)
        return String(s[start..<end])
        /*
         中心扩散法
         */
        
        /*
        if s.count < 2 { return s }
        
        let unicodeScalars = s.unicodeScalars.map { $0.value }
        var maxLocation = 0
        var maxLength = 1
        let maxCount = unicodeScalars.count - 1
        var index = 0
        
        while index < maxCount {
            var low = index
            var high = index
            while high < maxCount && unicodeScalars[index] == unicodeScalars[high + 1] {
                high += 1
            }
            
            index = high
            
            while low > 0 && high < maxCount && unicodeScalars[low - 1] == unicodeScalars[high + 1] {
                low -= 1
                high += 1
            }
            
            let tmpLength = high - low + 1
            if maxLength < tmpLength {
                maxLength = tmpLength
                maxLocation = low
                if maxLength >= ((unicodeScalars.count - index) << 1) {
                    break
                }
            }
            index += 1
        }
        
        let start = s.index(s.startIndex, offsetBy: maxLocation)
        let end = s.index(start, offsetBy: maxLength)
        return String(s[start..<end])
        */
    }
}
