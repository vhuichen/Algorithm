//
//  95UniqueBinarySearchTreesII.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/13.
//

import Foundation

extension Solution {
    //递归
    func generateTrees(_ n: Int) -> [TreeNode?] {
        var array = [[[TreeNode?]]](repeating:[[TreeNode?]](repeating: [TreeNode?](repeating: nil, count: 0), count: n + 1), count: n + 1)
        array[0][0] = [nil]
        array[1][1] = [TreeNode(1)]
        
        func generateTrees(_ start: Int, _ end:Int) -> [TreeNode?] {
            guard start <= end else { return [nil] }
            guard array[start][end].isEmpty else { return array[start][end] }
            
            var temp = [TreeNode?]()
            for i in start...end {
                let lefts = generateTrees(start, i - 1)
                let rights = generateTrees(i + 1, end)
                
                for left in lefts {
                    for right in rights {
                        let node = TreeNode(i)
                        node.left = left
                        node.right = right
                        temp.append(node)
                    }
                }
            }
            
            array[start][end] = temp
            
            return temp
        }
        
        return generateTrees(1, n)
    }
}
