//
//  20.ValidParentheses.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/8.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    /*
     解题思路：栈
     技巧：一旦判断出不符合，提前退出循环
     */
    func isValid(_ s: String) -> Bool {
        let dictHash: [Character : Character] = ["(" : ")", "{" : "}", "[" : "]"]
        var stack = [Character]()
        
        for item in s {
            if item == "(" || item == "{" || item == "[" {
                stack.append(item)
            } else if (stack.isEmpty) {
                return false
            } else if (dictHash[stack.last!] == item) {
                stack.removeLast()
            } else {
                return false
            }
        }
        
        return stack.isEmpty
    }
}
