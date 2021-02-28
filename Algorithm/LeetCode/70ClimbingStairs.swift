//
//  70ClimbingStairs.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation

extension Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 { return 1 }
        if n == 2 { return 2 }
        
        var last = 1
        var current = 2
        for _ in 3...n {
            let temp = current + last
            last = current
            current = temp
        }
        
        return current
    }
    
    /*
    func climbStairs(_ n: Int) -> Int {
        
        var dict = [Int:Int]()
        
        func _climbStairs(_ n: Int) -> Int {
            if n == 1 { return 1 }
            if n == 2 { return 2 }
            if dict[n] != nil { return dict[n]! }
            
            let nums_1 = _climbStairs(n - 1)
            let nums_2 = _climbStairs(n - 2)
            dict[n] = nums_1 + nums_2
            
            return dict[n]!
        }
        
        return _climbStairs(n)
    }
    */
}
