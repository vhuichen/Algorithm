//
//  145BinaryTreePostorderTraversal.swift
//  Algorithm
//
//  Created by vchan on 2021/2/2.
//

import Foundation

//二叉树后序遍历
extension Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        /*
        guard let root = root else {
            return []
        }
        return postorderTraversal(root.left) + postorderTraversal(root.right) + [root.val]
        */
        
        /*
        /* 递归二 */
        var result = [Int]()
        
        func inorderTraversal(_ root: TreeNode?, _ result: inout [Int]) {
            if root != nil {
                inorderTraversal(root!.left, &result)
                inorderTraversal(root!.right, &result)
                result.append(root!.val)
            }
        }
        inorderTraversal(root, &result)
        
        return result
        */
        
        var root = root
        var stack = [TreeNode]()
        var result = [Int]()
        var prev:TreeNode? = nil
        
        while !stack.isEmpty || root != nil {
            while root != nil {
                stack.append(root!)
                root = root?.left
            }
            
            root = stack.removeLast()
            
            if (root!.right == nil) || (root!.right === prev) {
                result.append(root!.val)
                prev = root
                root = nil
            } else {
                stack.append(root!)
                root = root!.right
            }
        }
        
        return result
    }
}
