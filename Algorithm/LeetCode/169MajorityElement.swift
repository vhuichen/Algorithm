//
//  169MajorityElement.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func majorityElement1(_ nums: [Int]) -> Int {
        var majority = 0
        var count = 0
        
        for i in 0..<nums.count {
            if count == 0 {
                majority = nums[i]
                count = 1
            } else {
                if nums[i] == majority {
                    count += 1
                } else {
                    count -= 1
                }
            }
        }
        return majority
    }
    
    func majorityElement2(_ nums: [Int]) -> Int {
        var majority = 0
        let half = nums.count / 2
        for i in 0..<64 {
            var ones = 0
            var zeors = 0
            for j in 0..<nums.count {
                if (nums[j] & (1 << i)) != 0 {
                    ones += 1
                    if ones > half { break }
                } else {
                    zeors += 1
                    if zeors > half { break }
                }
            }
            if ones > zeors {
                majority = majority | (1 << i)
            }
        }
        return majority
    }
    
    func majorityElement3(_ nums: [Int]) -> Int {
        var hash = [Int:Int]()
        let half = nums.count / 2
        
        for i in 0..<nums.count {
            hash[nums[i]] = (hash[nums[i]] ?? 0) + 1
            if hash[nums[i]]! > half {
                return nums[i]
            }
        }
        
        return -1
    }
}
