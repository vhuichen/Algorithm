//
//  102BinaryTreeLevelOrderTraversal.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/2.
//

import Foundation

//二叉树层次遍历
extension Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        
        var queue = [TreeNode]()
        var result = [[Int]]()
        
        queue.append(root)
        repeat {
            let count = queue.count
            var temp = [Int](repeating: 0, count: count)
            
            for i in 0..<count {
                let node = queue.removeFirst()
                
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
                
                temp[i] = node.val
            }
            
            result.append(temp)

        } while !queue.isEmpty
        
        return result
    }
}
