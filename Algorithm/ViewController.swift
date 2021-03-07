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
        if(Solution().uniquePaths(3,7) == 28) {
            print("")
        }
        Solution().merge([[1,3],[2,6],[8,10],[15,18]])
        Solution().findKthLargest1([3,2,1,5,6,4], 4)
        
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
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        
        var dict = [Int:Bool]()
        dict[0] = true
        
        func canJump(_ index: Int) -> Bool {
            if let isCanJump = dict[index] { return isCanJump }
            
            for i in (0..<index).reversed() {
                if nums[i] >= (index - i) && canJump(i) {
                    dict[index] = true
                    return true
                }
            }
            dict[index] = false
            return false
        }
        return canJump(nums.count - 1)
    }
    
    func canJump1(_ nums: [Int]) -> Bool {
        var jumpMax = nums[0]
        
        for i in 1..<nums.count {
            if jumpMax < i { return false }
            jumpMax = max(nums[i] + i, jumpMax)
        }
        
        return true
    }
}

extension Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        dp[0][0] = 1
        
        for i in 0..<m {
            for j in 0..<n {
                if i > 0 {
                    dp[i][j] = dp[i - 1][j]
                }
                
                if j > 0 {
                    dp[i][j] += dp[i][j - 1]
                }
            }
        }
        
        return dp.last!.last!
    }
    
    func uniquePaths1(_ m: Int, _ n: Int) -> Int {
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        dp[0][0] = 1
        
        for i in 0..<m {
            for j in 0..<n {
                if i > 0 {
                    dp[i][j] = dp[i - 1][j]
                }
                
                if j > 0 {
                    dp[i][j] += dp[i][j - 1]
                }
            }
        }
        
        return dp.last!.last!
    }
}

extension Solution {
    func merge1(_ intervals: [[Int]]) -> [[Int]] {
        var intervals = intervals
        intervals.sort { (one:[Int], other:[Int]) -> Bool in
            if one.first == other.first {
                return one.last! < other.last!
            } else {
                return one.first! < other.first!
            }
        }
        
        var results = [[Int]]()
        results.append(intervals[0])
        
        for i in 1..<intervals.count {
            if intervals[i][0] <= results.last![1] {
                results[results.count - 1][1] = max(intervals[i][1], results.last![1])
            } else {
                results.append(intervals[i])
            }
        }
        
        return results
    }
    
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var maxValue = Int(INT8_MIN)
        for item in intervals {
            if item[1] > maxValue {
                maxValue = item[1]
            }
        }
        
        var bitArray = [Int16](repeating: 0, count: maxValue * 2 + 2)
        for item in intervals {
            bitArray[item[0] * 2] += 1
            bitArray[item[1] * 2 + 1] -= 1
        }
        
        var results = [[Int]]()
        var start = -1
        var sum:Int16 = 0
        for i in 0..<bitArray.count where bitArray[i] != 0 {
            sum += bitArray[i]
            
            if start == -1 {
                start = i
                continue
            }
            
            if sum == 0 {
                results.append([start / 2, (i - 1) / 2])
                start = -1
            }
        }
        
        return results
    }
}

extension Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        
        for item in nums {
            result ^= item
        }
        
        return result
    }
}

extension Solution {
    func findContinuousSequence(_ target: Int) -> [[Int]] {
        var results = [[Int]]()
        var i = 1
        let end = target / 2
        
        while i <= end {
            var sum = i
            var last = i
            while sum < target {
                last += 1
                sum += last
            }
            if sum == target {
                results.append([Int](i...last))
                i += 2
            } else {
                i += 1
            }
        }
        
        return results
    }
    
    func findContinuousSequence1(_ target: Int) -> [[Int]] {
        var results = [[Int]]()
        var left = 1
        var right = 1
        let leftMax = target / 2
        let rightMax = leftMax + 1
        var sum = 1
        
        while left < right && right <= rightMax  {
            if sum == target {
                results.append([Int](left...right))
                sum -= left
                left += 1
                
                right += 1
                sum += right
            } else if (sum < target) {
                right += 1
                sum += right
            } else {
                sum -= left
                left += 1
            }
        }
        
        return results
    }
    
    func findContinuousSequence3(_ target: Int) -> [[Int]] {
        var results = [[Int]]()
        
        for n in 2...(target / 2) {
            let nStart = target - n * (n - 1) / 2
            if nStart <= 0 { break }
            
            if nStart % n == 0 {
                let start = nStart / n
                results.insert([Int](start..<start + n), at: 0)
            }
        }
        
        return results
    }
}

extension Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var grid = grid
        let m = grid.count
        let n = grid[m].count
        
        for i in 0..<m {
            for j in 0..<n {
                if i > 0 && j > 0 {
                    grid[i][j] += min(grid[i - 1][j], grid[i][j - 1])
                } else if i > 0 {
                    grid[i][j] += grid[i - 1][j]
                } else if j > 0 {
                    grid[i][j] += grid[i][j - 1]
                }
            }
        }
        
        return grid[m - 1][n - 1]
    }
}

extension Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        let target = nums.count - k
        
        func findKthLargest(_ left: Int, _ right: Int) -> Int {
            var tLeft = left
            var tRight = right
            let middle = (left + right) / 2
            //左边界作为参考点
            (nums[tLeft], nums[middle]) = (nums[middle], nums[tLeft])
            
            let pivot = nums[left]
            
            while tLeft < tRight {
                //由于左边界作为参考点，这里必须右边开始
                while tLeft < tRight && nums[tRight] >= pivot {
                    tRight -= 1
                }
                nums[tLeft] = nums[tRight]
                
                while tLeft < tRight && nums[tLeft] <= pivot {
                    tLeft += 1
                }
                nums[tRight] = nums[tLeft]
            }
            nums[tLeft] = pivot
            
            if tLeft == target {
                return nums[tLeft]
            } else if (tLeft < target) {
                return findKthLargest(tLeft + 1, right)
            } else {
                return findKthLargest(left, tLeft - 1)
            }
        }
        
        return findKthLargest(0, nums.count - 1)
    }
    
    func findKthLargest1(_ nums: [Int], _ k: Int) -> Int {
        let smallTopPile = SmallTopPile(Array(nums[..<k]))
        
        for item in nums[k...] {
            smallTopPile.push(item)
        }
        
        return smallTopPile.top()
    }
}

class SmallTopPile {
    private var array:[Int] = [Int]()
    private var arrayCount = 0
    
    init(_ array: [Int]) {
        self.array = array
        self.arrayCount = array.count
        
        var i = self.arrayCount / 2 - 1
        while i >= 0 {
            sortDown(i)
            i -= 1;
        }
    }
    
    func push(_ num: Int) {
        if array[0] < num {
            array[0] = num
            sortDown(0)
        }
    }
    
    func top() -> Int {
        array[0]
    }
    
    func sortDown(_ start: Int) {
        let leftIndex = start * 2 + 1
        let rightIndex = leftIndex + 1
        
        let rootValue = array[start]
        let leftValue = leftIndex < self.arrayCount ? array[leftIndex] : Int(INT32_MAX)
        let rightValue = rightIndex < self.arrayCount ? array[rightIndex] : Int(INT32_MAX)
        
        if leftValue < rootValue && leftValue < rightValue {
            (array[start], array[leftIndex]) = (array[leftIndex], array[start])
            sortDown(leftIndex)
        } else if (rightValue < rootValue && rightValue <= leftValue) {
            (array[start], array[rightIndex]) = (array[rightIndex], array[start])
            sortDown(rightIndex)
        }
    }
}

extension Solution {
    func buildTree1(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        
        guard preorder.count > 0 && inorder.count > 0 else { return nil }
        
        func inorderIndex(_ inorder: [Int], _ val: Int) -> Int {
            for i in 0..<inorder.count where inorder[i] == val {
                return i
            }
            return -1
        }
        
        func subArray(_ array: [Int], _ start: Int, _ length: Int) -> [Int] {
            var subArray = [Int](repeating: 0, count: length)
            
            for i in start..<(length + start) {
                subArray[i - start] = array[i]
            }
            return subArray
        }
        
        let tree = TreeNode(preorder[0])
        let index = inorderIndex(inorder, preorder[0])
        
        if index > 0 {
            let leftPreorder = subArray(preorder, 1, index)
            let leftInorder = subArray(inorder, 0, index)
            tree.left = buildTree(leftPreorder, leftInorder)
        }
        
        let start = index + 1
        let length = preorder.count - start
        if length > 0 {
            let rightPreorder = subArray(preorder, start, length)
            let rightInorder = subArray(inorder, start, length)
            tree.right = buildTree(rightPreorder, rightInorder)
        }
        
        return tree
    }
    
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var inorderMap = [Int:Int]()
        for i in 0..<inorder.count {
            inorderMap[inorder[i]] = i
        }
        
        func buildTree(_ preorder: [Int],
                       _ inorder: [Int],
                       _ preorderLeft: Int,
                       _ preorderRight: Int,
                       _ inorderLeft: Int,
                       _ inorderRight: Int) -> TreeNode? {
            if preorderLeft > preorderRight || inorderLeft > inorderRight { return nil }
            
            let tree = TreeNode(preorder[preorderLeft])
            let rootIndex = inorderMap[preorder[preorderLeft]]!
            let length = rootIndex - inorderLeft
            
            tree.left = buildTree(preorder,
                                  inorder,
                                  preorderLeft + 1,
                                  preorderLeft + length,
                                  inorderLeft,
                                  rootIndex - 1)
            
            tree.right = buildTree(preorder,
                                   inorder,
                                   preorderLeft + length + 1,
                                   preorderRight,
                                   rootIndex + 1,
                                   inorderRight)
            
            return tree
        }
        
        return buildTree(preorder, inorder, 0, preorder.count - 1, 0, inorder.count - 1)
    }
}

extension Solution {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var slow = head
        var fast = head
        
        for _ in 1..<k {
            fast = fast?.next
        }
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next
        }
        
        return slow
    }
}
