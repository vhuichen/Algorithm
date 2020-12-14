//
//  LongestPalindrome.swift
//  LeetCode-Swift
//
//  Created by chenhui on 2020/12/14.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func longestPalindrome(_ s: String) -> String {
        /*
         中心扩散法
         */
        if s.count < 2 { return s }
        
        //一定要处理成数组，不然后面字符串处理很耗时（LeetCode直接报超时）
//        let array = Array(s)
        let array = s.unicodeScalars.map { $0.value }
        
        var startIndex = 0
        var length = 1
        for index in 0..<(array.count - 1) {
            //奇数
            if length < ((array.count - index) << 1) - 1 {
                let halflength = lengthWith(array, left: index, right: index)
                let length1 = (halflength << 1) - 1
                
                if length < length1 {
                    length = length1
                    startIndex = index - halflength + 1
                }
            }
            //偶数
            if length < ((array.count - index) << 1) {
                let halflength = lengthWith(array, left: index, right: index + 1)
                let length1 = halflength << 1
                
                if length < length1 {
                    length = length1
                    startIndex = index - halflength + 1
                }
            }
        }
        
//        return String(array[startIndex..<startIndex + length])
        
//        let start = s.index(s.startIndex, offsetBy: startIndex)
//        let end = s.index(start, offsetBy: length)
//        return String(s[start..<end])
        
        return String(Array(s)[startIndex..<startIndex+length])
    }
    
    func lengthWith(_ array:[UInt32], left:Int, right:Int) -> Int {
        var leftTmp = left
        var rightTmp = right
        
        while leftTmp >= 0 && rightTmp < array.count {
            if array[leftTmp] == array[rightTmp] {
                leftTmp -= 1
                rightTmp += 1
            } else {
                break
            }
        }
        
        return left - leftTmp
    }
}
