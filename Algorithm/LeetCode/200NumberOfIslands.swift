//
//  200NumberOfIslands.swift
//  Algorithm
//
//  Created by vchan on 2021/7/1.
//

import Foundation

extension Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 else { return 0 }
        
        var grid = grid
        let mMax = grid.count
        let nMax = grid[0].count
        var result = 0
        
        let one = Character("1")
        let zero = Character("0")
        
        func dfs(_ m: Int, _ n: Int) {
            grid[m][n] = zero
            
            if n + 1 < nMax && grid[m][n + 1] == one {
                dfs(m, n + 1)
            }
            if n - 1 >= 0 && grid[m][n - 1] == one {
                dfs(m, n - 1)
            }
            if m + 1 < mMax && grid[m + 1][n] == one {
                dfs(m + 1, n)
            }
            if m - 1 >= 0 && grid[m - 1][n] == one {
                dfs(m - 1, n)
            }
        }
        
        for m in 0..<grid.count {
            for n in 0..<grid[0].count {
                if grid[m][n] == one {
                    result += 1
                    dfs(m, n)
                }
            }
        }
        
        return result
    }
}
