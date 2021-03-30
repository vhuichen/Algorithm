//
//  ViewController.swift
//  Algorithm
//
//  Created by vchan on 2020/12/6.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let solution = Solution()
        assert(solution.lengthOfLIS([3,5,6,2,5,4,19,5,6,7,12]) == 6)
        
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 1) == true)
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 2) == true)
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 5) == true)
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 6) == true)
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 17) == true)
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 24) == true)
        
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 20) == false)
        assert(solution.findNumberIn2DArray([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 100) == false)
        
        var array = [2,0,2,1,1,0,1,2,0,2,0,0,0,1,2,1,2,1,2]
        solution.sortColors(&array)
        
    }
}

extension Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty || matrix[0].isEmpty { return false }
        
        func findNumberIn2DArray(_ leftRow: Int, _ leftColunm: Int, _ rightRow: Int, _ rightColunm: Int) -> Bool {
            if leftRow > rightRow || leftColunm > rightColunm { return false }
            
            let middleRow = (leftRow + rightRow) / 2
            let middleColunm = (leftColunm + rightColunm) / 2
            let current = matrix[middleRow][middleColunm]
            
            if current < target {
                return findNumberIn2DArray(leftRow, middleColunm + 1, middleRow, rightColunm) || findNumberIn2DArray(middleRow + 1, leftColunm, rightRow, rightColunm)
            } else if (current > target) {
                return findNumberIn2DArray(leftRow, leftColunm, middleRow - 1, rightColunm) || findNumberIn2DArray(middleRow, leftColunm, rightRow, middleColunm - 1)
            } else {
                return true
            }
        }
        
        return findNumberIn2DArray(0, 0, matrix.count - 1, matrix[0].count - 1)
    }
    
    func findNumberIn2DArray1(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty || matrix[0].isEmpty { return false }
        
        let rows = matrix.count
        var row = 0
        var colunm = matrix[0].count - 1
        
        while row < rows && colunm >= 0 {
            let current = matrix[row][colunm]
            
            if current < target {
                row += 1
            } else if current > target {
                colunm -= 1
            } else {
                return true
            }
        }
        
        return false
    }
}


extension Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var hash = [Bool](repeating: false, count: nums.count)
        
        for i in 0..<nums.count {
            let num = nums[i]
            if hash[num] {
                return num
            } else {
                hash[num] = true
            }
        }
        
        return -1
    }
    
    func findRepeatNumber1(_ nums: [Int]) -> Int {
        var nums = nums
        
        for i in 0..<nums.count {
            while i != nums[i] {
                if nums[i] == nums[nums[i]] {
                    return nums[i]
                }
                let temp = nums[i]
                nums[i] = nums[temp]
                nums[temp] = temp
            }
        }
        
        return -1
    }
}

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

extension Solution {
    func lengthOfLastWord1(_ s: String) -> Int {
        let sArray = Array(s)
        var index = Int(sArray.count - 1)
        var length = 0
        while index >= 0 {
            if sArray[index] == " " {
                if length == 0 {
                    index -= 1
                    continue
                }
                break
            }
            length += 1
            index -= 1
        }
        return length
    }
    
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        for char in s.reversed() {
            if char == " " {
                if length == 0 { continue }
                break
            }
            length += 1
        }
        return length
    }
}

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

extension Solution {
    func lengthOfLIS1(_ nums: [Int]) -> Int {
        var dp = [Int](repeating: 1, count: nums.count)
        var maxLength = 1
        
        for i in 1..<nums.count {
            for j in 0..<i {
                if nums[j] < nums[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            maxLength = max(maxLength,  dp[i])
        }
        
        return maxLength
    }
    
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var maxLength = 1
        var dMax = [Int](repeating: 0, count: nums.count + 1)
        dMax[maxLength] = nums[0]
        
        for i in 1..<nums.count {
            if dMax[maxLength] < nums[i] {
                maxLength += 1
                dMax[maxLength] = nums[i]
            } else {
                var left = 1
                var right = maxLength - 1
                var targetLength = 0
                
                while left <= right {
                    let middle = (right + left) / 2
                    if dMax[middle] < nums[i] {
                        targetLength = middle
                        left = middle + 1
                    } else {
                        right = middle - 1
                    }
                }
                
                dMax[targetLength + 1] = nums[i]
            }
        }
        
        return maxLength
    }
}

extension Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0
        var right = nums.count - 1
        var i = 0
        
        while i <= right {
            if nums[i] == 0 {
                if left != i {
                    (nums[i], nums[left]) = (nums[left], nums[i])
                    left += 1
                    continue
                }
            } else if nums[i] == 2 {
                if right != i {
                    (nums[i], nums[right]) = (nums[right], nums[i])
                    right -= 1
                    continue
                }
            }
            i += 1
        }
    }
}
