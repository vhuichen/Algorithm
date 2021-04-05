//
//  240Search2DMatrixII.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

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
