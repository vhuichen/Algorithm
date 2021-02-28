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
