//
//  18.4Sum.swift
//  Algorithm
//
//  Created by vchan on 2021/1/6.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func fourSum(_ nums: [Int], _ target:Int) -> [[Int]] {
        if nums.count < 4 { return [] }
        
        var numsSort = nums
        numsSort.sort()
        
        var val = [[Int]]()
        var first = 0
        let firstNumLimit = numsSort.count - 3
        let secondNumLimit = numsSort.count - 2
        let fourthNumMax = numsSort.count - 1
        
        while first < firstNumLimit {
            var second = first + 1
            
            if numsSort[first] + numsSort[first + 1] + numsSort[first + 2] + numsSort[first + 3] > target { break }
            
            if numsSort[first] + numsSort[fourthNumMax - 2] + numsSort[fourthNumMax - 1] + numsSort[fourthNumMax] < target {
                first += 1
                continue
            }
            
            while second < secondNumLimit {
                var third = second + 1
                var fourth = fourthNumMax
                
                if numsSort[first] + numsSort[second] + numsSort[second + 1] + numsSort[second + 2] > target { break }
                
                if numsSort[first] + numsSort[second] + numsSort[fourthNumMax - 1] + numsSort[fourthNumMax] < target {
                    second += 1
                    continue
                }
                
                while third < fourth {
                    let sum = numsSort[first] + numsSort[second] + numsSort[third] + numsSort[fourth]
                    
                    if sum > target {
                        fourth -= 1
                    } else if sum < target {
                        third += 1
                    } else {
                        val.append([numsSort[first], numsSort[second], numsSort[third], numsSort[fourth]])
                        
                        repeat {
                            third += 1
                        } while third < fourth && numsSort[third - 1] == numsSort[third]
                        
                        repeat {
                            fourth -= 1
                        } while third < fourth && numsSort[fourth] == numsSort[fourth + 1]
                        
                    }
                }
                
                repeat {
                    second += 1
                } while second < secondNumLimit && numsSort[second - 1] == numsSort[second]
            }
            
            repeat {
                first += 1
            } while first < firstNumLimit && numsSort[first - 1] == numsSort[first]
        }
        
        return val
    }
}
