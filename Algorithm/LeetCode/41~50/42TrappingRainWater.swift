//
//  42TrappingRainWater.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    func trap(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var leftMax = 0
        var rightMax = 0
        var sum = 0
        
        while left < right {
            if height[left] < height[right] {
                if height[left] > leftMax {
                    leftMax = height[left]
                } else {
                    sum += leftMax - height[left]
                }
                left += 1
            } else {
                if height[right] > rightMax {
                    rightMax = height[right]
                } else {
                    sum += rightMax - height[right]
                }
                right -= 1
            }
        }
        
        return sum
    }
    
    func trap2(_ height: [Int]) -> Int {
        var stack = [Int]()
        var sum = 0
        
        for i in 0..<height.count {
            while !stack.isEmpty && height[i] > height[stack.last!] {
                let temp = stack.removeLast()
                if stack.isEmpty { break }
                
                let minHeight = min(height[i], height[stack.last!])
                sum += (minHeight - height[temp]) * (i - stack.last! - 1)
            }
            stack.append(i)
        }
        
        return sum
    }
    
    //
    func trap1(_ height: [Int]) -> Int {
        guard height.count > 2 else { return 0 }
        
        var sum = 0
        var leftMax = [Int](repeating: 0, count: height.count)
        var rightMax = [Int](repeating: 0, count: height.count)
        
        for i in 1..<(height.count - 1) {
            leftMax[i] = max(leftMax[i - 1], height[i - 1])
        }
        
        for i in (1..<(height.count - 1)).reversed() {
            rightMax[i] = max(rightMax[i + 1], height[i + 1])
        }
        
        for i in 1..<(height.count - 1) {
            let temp = min(leftMax[i], rightMax[i]) - height[i]
            if temp > 0 {
                sum += temp
            }
        }
        
        return sum
    }
}
