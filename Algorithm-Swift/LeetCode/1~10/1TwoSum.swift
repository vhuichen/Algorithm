//
//  TwoSum.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/6.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

/// 1. 两数之和
extension Solution {
    /*
     利用哈希表空间换时间，每遍历一次，将对应的 num 以及 index 存放在哈希表中，key 是 num, value 是 index
     然后以 target - value 作为 key 在哈希表中查找
     时间复杂度O(n),空间复杂度O(n)
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        
        for (index, value) in nums.enumerated() {
            if let firstIndex = dict[target - value] {
                return [firstIndex, index]
            }
            dict[value] = index
        }
        
        return []
    }
}
