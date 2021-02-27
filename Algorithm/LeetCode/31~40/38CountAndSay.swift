//
//  38CountAndSay.swift
//  Algorithm
//
//  Created by vchan on 2021/2/27.
//

import Foundation

extension Solution {
    func countAndSay(_ n: Int) -> String {
        guard n > 1 else { return "1" }
        
        var array = [1]
        for _ in 2...n {
            var temp = [Int]()
            var i = 0
            while i < array.count {
                let num = array[i]
                let start = i
                while i < array.count && num == array[i] {
                    i += 1
                }
                temp.append(i - start)
                temp.append(num)
            }
            array = temp
        }
        
        return array.map { (num) -> String in String(num) }.joined()
    }
}
