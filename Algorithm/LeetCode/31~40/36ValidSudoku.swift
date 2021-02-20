//
//  36ValidSudoku.swift
//  Algorithm
//
//  Created by vchan on 2021/2/10.
//

import Foundation

extension Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var columns:[[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
        var rows:[[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
        var squares:[[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
        
        for i in 0..<9 {
            for j in 0..<9 {
                guard board[i][j] != "." else { continue }
                
                let square_x = (j / 3) + i - (i % 3)
                
                let num = Int(board[i][j].asciiValue! - 49)
                
                if columns[j][num] || rows[i][num] || squares[square_x][num] {
                    return false
                }
                columns[j][num] = true
                rows[i][num] = true
                squares[square_x][num] = true
            }
        }
        
        return true
    }
}
