//
//  ViewController.swift
//  Algorithm
//
//  Created by vchan on 2020/12/6.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func xxxx2(_ m: Int) {
        //1 5 7
        var dp = [Int](repeating: 0, count: m)
        dp[0] = 1
        dp[1] = 2
        dp[2] = 3
        dp[3] = 4
        dp[4] = 1
        dp[5] = 2
        dp[6] = 1
        
        for i in 7..<m {
            let sum1 = dp[i - 1]
            let sum5 = dp[i - 5]
            let sum7 = dp[i - 7]
            
            if sum1 < sum5 && sum1 < sum7 {
                dp[i] = sum1 + 1
            } else if sum5 < sum1 && sum5 < sum7 {
                dp[i] = sum5 + 1
            } else {
                dp[i] = sum7 + 1
            }
        }
        
        print(dp)
        
    }
    
    func xxxx(_ m: Int) {
        //1 5 7
        var dp = [(Int, Int, Int)](repeating: (0, 0, 0), count: m)
        dp[0] = (1,0,0)
        dp[1] = (2,0,0)
        dp[2] = (3,0,0)
        dp[3] = (4,0,0)
        dp[4] = (0,1,0)
        dp[5] = (1,1,0)
        dp[6] = (0,0,1)
        
        for i in 7..<m {
            var temp1 = dp[i - 1]
            var temp5 = dp[i - 5]
            var temp7 = dp[i - 7]
            let sum1 = temp1.0 + temp1.1 + temp1.2
            let sum5 = temp5.0 + temp5.1 + temp5.2
            let sum7 = temp7.0 + temp7.1 + temp7.2
            
            if sum1 < sum5 && sum1 < sum7 {
                temp1.0 += 1
                dp[i] = temp1
            } else if sum5 < sum1 && sum5 < sum7 {
                temp5.1 += 1
                dp[i] = temp5
            } else {
                temp7.2 += 1
                dp[i] = temp7
            }
        }
        
        print(dp)
    }
    
    //a的b次幂
    //3^3 = 3^(1+2) = 3*9
    func poww(_ a: Int, _ b: Int) -> Int {
        if a == 0 || a == 1 { return a }
        var ans = 1
        var b = b
        var base = a
        
        while b > 0 {
            if b & 1 != 0 {
                ans *= base
            }
            base *= base
            b >>= 1
        }
        
        return ans
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        if(Solution().uniquePaths(3,7) == 28) {
//            print("")
//        }
//        Solution().merge([[1,3],[2,6],[8,10],[15,18]])
//        Solution().findKthLargest1([3,2,1,5,6,4], 4)
//        xxxx(100)
//        xxxx2(100)
        
        assert(poww(0,3) == Int(pow(0.0, 3)))
        assert(poww(1,3) == Int(pow(1.0, 3)))
        assert(poww(3,3) == Int(pow(3.0, 3)))
        assert(poww(2,2) == Int(pow(2.0, 2)))
        assert(poww(3,10) == Int(pow(3.0, 10)))
        assert(poww(3,10) == Int(pow(3.0, 10)))
        assert(poww(-3,10) == Int(pow(-3.0, 10)))
        assert(poww(-5,5) == Int(pow(-5.0, 5)))

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

extension Solution {
    class Solution {
        func spiralOrder(_ matrix: [[Int]]) -> [Int] {
            //往左 往下 往右
            var direction = [Bool](repeating: true, count: 3)
            var mMin = 0
            var mMax = matrix.count - 1
            var nMin = 0
            var nMax = matrix[0].count - 1
            let count = matrix.count * matrix[0].count
            var result = [Int](repeating: 0, count: count)
            var i = 0
            
            while i < count {
                if direction[0] {
                    for n in nMin...nMax {
                        result[i] = matrix[mMin][n]
                        i += 1
                    }
                    direction[0] = false
                    direction[1] = true
                    mMin += 1
                } else if direction[1] {
                    for m in mMin...mMax {
                        result[i] = matrix[m][nMax]
                        i += 1
                    }
                    direction[1] = false
                    direction[2] = true
                    nMax -= 1
                } else if direction[2] {
                    for n in (nMin...nMax).reversed() {
                        result[i] = matrix[mMax][n]
                        i += 1
                    }
                    direction[2] = false
                    mMax -= 1
                } else {
                    for m in (mMin...mMax).reversed() {
                        result[i] = matrix[m][nMin]
                        i += 1
                    }
                    direction[0] = true
                    nMin += 1
                }
            }
            
            return result
        }
    }
}

