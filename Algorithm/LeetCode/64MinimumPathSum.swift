//
//  64MinimumPathSum.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

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
