//
//  88MergeSortedArray.swift
//  Algorithm
//
//  Created by vchan on 2021/3/2.
//

import Foundation

extension Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Right = m - 1
        var nums2Right = n - 1
        var end = m + n - 1
        
        while nums2Right >= 0 {
            if nums1Right >= 0 && nums1[nums1Right] > nums2[nums2Right] {
                nums1[end] = nums1[nums1Right]
                nums1Right -= 1
            } else {
                nums1[end] = nums2[nums2Right]
                nums2Right -= 1
            }
            end -= 1
        }
    }
}
