//
//  121BestTimeToBuyAndSellStock.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation


extension Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var minPrice = prices[0]
        var maxProfit = 0
        
        for i in 1..<prices.count {
            if prices[i] < minPrice {
                minPrice = prices[i]
            } else {
                let temp = prices[i] - minPrice
                if temp > maxProfit {
                    maxProfit = temp
                }
            }
        }
        
        return maxProfit
    }
}

extension Solution {
    func maxProfit2(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var maxProfit = 0
        var start = -1
        
        for i in 0..<prices.count {
            if start < 0 {
                if (i + 1) < prices.count && prices[i] < prices[i + 1] {
                    start = i
                }
            } else if (i + 1) == prices.count || prices[i] > prices[i + 1] {
                maxProfit += prices[i] - prices[start]
                start = -1
            }
        }
        
        return maxProfit
    }
    
    func maxProfit22(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var maxProfit = 0
        for i in 1..<prices.count {
            let price =  prices[i] - prices[i - 1]
            if price > 0 {
                maxProfit += price
            }
        }
        
        return maxProfit
    }
    
//    func maxDepth(_ root: TreeNode?) -> Int {
////        guard root != nil else { return 0 }
//
//        func maxDepth(_ root: TreeNode?, _ depth: Int) -> Int {
//            if root == nil { return depth }
//
//            let depth1 = maxDepth(root?.left, depth + 1)
//            let depth2 = maxDepth(root?.right, depth + 1)
//            return depth1 > depth2 ? depth1 : depth2;
//        }
//        return maxDepth(root, 0)
//    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        
        let depth1 = maxDepth(root?.left)
        let depth2 = maxDepth(root?.right)
        return (depth1 > depth2 ? depth1 : depth2) + 1;
    }
    
    
}

extension Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var results = [[Int]]()
        var status = [Bool](repeating: false, count: nums.count)
        var result = [Int]()
        
        func backtrack(_ result:inout [Int], _ status: inout [Bool]) {
            if result.count == nums.count {
                let res = result
                results.append(res)
                return
            }
            
            for i in 0..<nums.count {
                if status[i] { continue }
                status[i] = true
                result.append(nums[i])
                backtrack(&result, &status)
                status[i] = false
                result.removeLast()
            }
        }
        
        backtrack(&result, &status)
        
        return results
    }
}


extension Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0] }
        
        var dp = [Int](repeating: 0, count: nums.count)
        dp[0] = nums[0]
        dp[1] = max(nums[0], nums[1])
        
        for i in 2..<nums.count {
            dp[i] = max(dp[i - 2] + nums[i], dp[i - 1])
        }
        
        return dp.last!
    }
}
