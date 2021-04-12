//
//  322CoinChange.swift
//  Algorithm
//
//  Created by vchan on 2021/4/4.
//

import Foundation

extension Solution {
    
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        
        var dp = [Int](repeating: -1, count: amount + 1)
        
        for num in 1...amount {
            for coin in coins {
                let last = num - coin
                if last > 0 {
                    if dp[last] != -1 {
                        if dp[num] == -1 || dp[num] > dp[last] + 1 {
                            dp[num] = dp[last] + 1
                        }
                    }
                } else if last == 0 {
                    dp[num] = 1
                }
            }
        }
        
        return dp[amount]
    }
    
    func coinChange2(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        
        var dp = [Int](repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        for num in 1...amount {
            for coin in coins {
                let last = num - coin
                if last >= 0 {
                    dp[num] = min(dp[last] + 1, dp[num])
                }
            }
        }
        
        return dp[amount] > amount ? -1 : dp[amount]
    }
    
    //dfs
    func coinChange1(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        
        var result = Int.max
        let sorts = coins.sorted()
        
        func dfs(_ amount: Int,_ index: Int, _ res: Int) {
            if index < 0 { return }
            if amount < sorts[0] { return }
            
            var maxCount = amount / sorts[index]
            while maxCount >= 0 {
                let remainder = amount - sorts[index] * maxCount
                let currentCount = res + maxCount
                
                if remainder == 0 {
                    result = min(result, currentCount)
                    break
                }
                
                if currentCount + 1 >= result {
                    break
                }
                
                dfs(remainder, index - 1, currentCount)
                
                maxCount -= 1
            }
        }
        
        dfs(amount, sorts.count - 1, 0)
        
        return result == Int.max ? -1 : result
    }
}
