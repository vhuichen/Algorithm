//
//  FindMedianSortedArrays.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/12.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import Foundation

/// 4. 寻找两个正序数组的中位数
extension Solution {
    /*
     二分查找
     O(log(n + m)) = O(log(n)) + Olog(m)
     
     方法一：两个数组分别双指针，每次将头尾最小、最大的数字去掉，等剩下一个或者两个数据时就可以得到中位数
     方法二：二分查找，当其中一个数组的中位数确定时，另一个数组的中位数也就确定了
     方法三：方法一的简化版，线性查找，只需要定位一边的个数就行了
     */
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        /* 方法三：线性查找，简单易理解 */
        /*
        let count = nums1.count + nums2.count
        let isEvenNumber = count % 2 == 0
        let totalLeftCount = (count + 1) >> 1
        var nums1LeftCount = 0
        var nums2LeftCount = 0
        
        while nums1LeftCount + nums2LeftCount < totalLeftCount {
            if nums1LeftCount == nums1.count {
                nums2LeftCount = totalLeftCount - nums1LeftCount
            } else if (nums2LeftCount == nums2.count) {
                nums1LeftCount = totalLeftCount - nums2LeftCount
            } else if nums1[nums1LeftCount] < nums2[nums2LeftCount] {
                nums1LeftCount += 1
            } else {
                nums2LeftCount += 1
            }
        }
        
        var arrayLeft = 0
        if nums1LeftCount > 0 && nums2LeftCount > 0 {
            arrayLeft = max(nums1[nums1LeftCount - 1], nums2[nums2LeftCount - 1])
        } else if (nums1LeftCount > 0) {
            arrayLeft = nums1[nums1LeftCount - 1]
        } else {
            arrayLeft = nums2[nums2LeftCount - 1]
        }
        if !isEvenNumber {
            return Double(arrayLeft)
        }
        
        var arrayRight = 0
        if nums1LeftCount < nums1.count && nums2LeftCount < nums2.count {
            arrayRight = min(nums1[nums1LeftCount], nums2[nums2LeftCount])
        } else if nums1LeftCount < nums1.count {
            arrayRight = nums1[nums1LeftCount]
        } else {
            arrayRight = nums2[nums2LeftCount]
        }
        return Double(arrayLeft + arrayRight) / 2
        */
        
        /* 方法二：二分法，时间复杂度最低，但代码最难写 */
        
        var numsSmall:[Int] = nums1
        var numsLarge:[Int] = nums2
        if nums1.count > nums2.count {
            numsSmall = nums2
            numsLarge = nums1
        }
        
        let count = numsSmall.count + numsLarge.count
        let isEvenNumber = count % 2 == 0
        var leftCount = 0 // 表示左边最少0个
        var rightCount = numsSmall.count // 表示左边最多 numsSmall.count 个
        let median = (count + 1) >> 1 // 中位数，偶数的话就是左边的那位
        var smalLeftCount = 0
        var largeLeftCount = 0
        
        while leftCount < rightCount {
            smalLeftCount = leftCount + (rightCount - leftCount + 1) >> 1
            largeLeftCount = median - smalLeftCount
            
            if numsSmall[smalLeftCount - 1] > numsLarge[largeLeftCount] {
                //如果大于表示一定不适合，减1后作为边界
                rightCount = smalLeftCount - 1
            } else {
                //如果小于，则可能时刻，所以边界也要保存，不需要加一
                leftCount = smalLeftCount
            }
        }
        
        smalLeftCount = leftCount
        largeLeftCount = median - smalLeftCount
        
        var arrayLeft = 0
        
        if smalLeftCount > 0 && largeLeftCount > 0 {
            arrayLeft = max(numsSmall[smalLeftCount - 1], numsLarge[largeLeftCount - 1])
        } else if (smalLeftCount > 0) {
            arrayLeft = numsSmall[smalLeftCount - 1]
        } else {
            arrayLeft = numsLarge[largeLeftCount - 1]
        }
        
        if !isEvenNumber {
            return Double(arrayLeft)
        }
        
        var arrayRight = 0
        
        if smalLeftCount < numsSmall.count && largeLeftCount < numsLarge.count {
            arrayRight = min(numsSmall[smalLeftCount], numsLarge[largeLeftCount])
        } else if smalLeftCount < numsSmall.count {
            arrayRight = numsSmall[smalLeftCount]
        } else {
            arrayRight = numsLarge[largeLeftCount]
        }
        
        return Double(arrayLeft + arrayRight) / 2
        
        
        
        /* 方法一：数组两边同时减去最小最大值，直到只剩一个数组，或者两个数据 */
        /*
        var count = nums1.count + nums2.count
        let isEvenNumber = count % 2 == 0
        
        var nums1Left = 0
        var nums1Right = nums1.count - 1
        var nums2Left = 0
        var nums2Right = nums2.count - 1
        
        while nums1Left <= nums1Right && nums2Left <= nums2Right && count > 2 {
            if nums1[nums1Left] < nums2[nums2Left] {
                nums1Left += 1
            } else {
                nums2Left += 1
            }
            if nums1[nums1Right] > nums2[nums2Right] {
                nums1Right -= 1
            } else {
                nums2Right -= 1
            }
            count = nums1Right - nums1Left + 1 + nums2Right - nums2Left + 1
        }
        
        if nums1Left == nums1Right && nums2Left == nums2Right {
            return Double(nums1[nums1Left] + nums2[nums2Left]) / 2
        } else if nums1Left <= nums1Right {
            let mid = (nums1Right + nums1Left) >> 1
            if isEvenNumber {
                return Double(nums1[mid] + nums1[mid + 1]) / 2
            } else {
                return Double(nums1[mid])
            }
        } else {
            let mid = (nums2Right + nums2Left) >> 1
            if isEvenNumber {
                return Double(nums2[mid] + nums2[mid + 1]) / 2
            } else {
                return Double(nums2[mid])
            }
        }
        */
    }
}
