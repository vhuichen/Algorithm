//
//  ViewController.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/6.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.gray
        
        
//        let solution = Solution()
//        var s = [-1, 0, 1, 2, -1, -4]
//        var result = solution.threeSum(s)
//        
//        //
//        s = [-1, 0, 0, 1, 4, 5]
//        result = solution.fourSum(s, 4)
//        assert(result[0] == [-1, 0, 0, 1, 4])
//        
//        s = [-1, 1, 0, 1, 4, 5]
//        result = solution.fourSum(s, 100)
//        assert(result == [])
//        
//        //
//        s = [-1, 0, 0, 1, 4, 5]
//        result = solution.threeSum1(s, 4)
//        assert(result[0] == [-1, 0, 0, 1, 4])
//        
//        s = [-1, 1, 0, 1, 4, 5]
//        result = solution.threeSum1(s, 22)
//        assert(result[0] == [1, 4, 5])
        
    }
}

extension Solution {
    
    func threeSum1(_ nums: [Int], _ target:Int) -> [[Int]] {
        var numsSort = nums
        numsSort.sort()
        
        var val = [[Int]]()
        
//        for i in 0..<numsSort.count {
//            var left = i + 1
//            var right = numsSort.count - 1
//            var lastDistance = Int(INT8_MIN)
//            var last = []
//            
//            while left < right {
//                let sum = numsSort[i] + numsSort[left] + numsSort[right]
//                
//                if sum == target {
//                    val.append([numsSort[i], numsSort[left], numsSort[right]])
//                    break
//                }
//                
//                if (lastSum < target && sum>=target) {
//                    
//                    break
//                } else if lastSum <= sum && sum < target {
//                    left += 1
//                } else if lastSum >= sum && sum > target {
//                    right -= 1
//                }
//                
//                lastSum = sum
//                last = [numsSort[i], numsSort[left], numsSort[right]]
//            }
//        }
        
        return val
    }
    
    func fourSum(_ nums: [Int], _ target:Int) -> [[Int]] {
        var numsSort = nums
        numsSort.sort()
        
        var val = [[Int]]()
        
        for i in 0..<numsSort.count {
            for j in (i + 1)..<numsSort.count {
                
                var left = j + 1
                var right = numsSort.count - 1
                
                while left < right {
                    let sum = numsSort[i] + numsSort[j] + numsSort[left] + numsSort[right]
                    
                    if sum > target {
                        right -= 1
                    } else if sum < target {
                        left += 1
                    } else {
                        val.append([numsSort[i], numsSort[j], numsSort[left], numsSort[right]])
                        break
                    }
                }
            }
        }
        
        return val
    }
    
    
    
}
