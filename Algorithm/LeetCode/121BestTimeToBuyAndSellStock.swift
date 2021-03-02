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
}
