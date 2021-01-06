//
//  15.3Sum.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/5.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 { return [] }
        
        var numsSort = nums
        numsSort.sort()
        
        var val = [[Int]]()
        var first = 0
        let firstNumLimit = numsSort.count - 2
        let thirdNumMax = numsSort.count - 1
        
        while first < firstNumLimit {
            var second = first + 1
            var third = thirdNumMax
            let target = -numsSort[first]
            
            while second < third {
                let sum = numsSort[second] + numsSort[third]
                
                if sum > target {
                    third -= 1
                } else if sum < target {
                    second += 1
                } else {
                    val.append([numsSort[first], numsSort[second], numsSort[third]])
                    
                    repeat {
                        second += 1
                    } while second < third && numsSort[second - 1] == numsSort[second]
                    
                    repeat {
                        third -= 1
                    } while second < third && numsSort[third] == numsSort[third + 1]
                    
                }
            }
            
            repeat {
                first += 1
            } while first < firstNumLimit && numsSort[first - 1] == numsSort[first]
        }
        
        return val
    }
}
