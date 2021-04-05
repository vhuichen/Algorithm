//
//  54SpiralMatrix.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

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

