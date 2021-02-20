//
//  11.swift
//  Algorithm
//
//  Created by vchan on 2021/1/3.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var area = 0
        
        while left < right {
            if height[left] < height[right] {
                area = max(area, height[left] * (right - left))
                left += 1
            } else {
                area = max(area, height[right] * (right - left))
                right -= 1
            }
        }
        
        return area
    }
}
