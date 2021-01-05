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
        let firstNumMax = numsSort.count - 2
        let thirdNumMax = numsSort.count - 1
        
        while first < firstNumMax {
            if numsSort[first] > 0 { break }
            
            var second = first + 1
            var third = thirdNumMax
            let target = -numsSort[first]
            
            while second < third {
                if numsSort[second] > target { break }
                
                let sum = numsSort[second] + numsSort[third]
                
                if sum > target {
                    
                    repeat {
                        third -= 1
                    } while second < third && numsSort[third] == numsSort[third + 1]
                    
                } else if sum < target {
                    
                    repeat {
                        second += 1
                    } while second < third && numsSort[second - 1] == numsSort[second]
                    
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
            } while first < firstNumMax && numsSort[first - 1] == numsSort[first]
        }
        
        return val
    }
}
