//
//  58LengthOfLastWord.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func lengthOfLastWord1(_ s: String) -> Int {
        let sArray = Array(s)
        var index = Int(sArray.count - 1)
        var length = 0
        while index >= 0 {
            if sArray[index] == " " {
                if length == 0 {
                    index -= 1
                    continue
                }
                break
            }
            length += 1
            index -= 1
        }
        return length
    }
    
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        for char in s.reversed() {
            if char == " " {
                if length == 0 { continue }
                break
            }
            length += 1
        }
        return length
    }
}
