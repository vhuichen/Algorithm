//
//  144BinaryTreePreorderTraversal.swift
//  Algorithm
//
//  Created by vchan on 2021/2/2.
//

import Foundation

//二叉树前序遍历
extension Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        /*
        //递归
        guard let root = root else {
            return []
        }
        return [root.val] + preorderTraversal(root.left) + preorderTraversal(root.right)
        */
        
        /*
        /* 递归二 */
        var result = [Int]()
        
        func inorderTraversal(_ root: TreeNode?, _ result: inout [Int]) {
            if root != nil {
                result.append(root!.val)
                inorderTraversal(root!.left, &result)
                inorderTraversal(root!.right, &result)
            }
        }
        inorderTraversal(root, &result)
        
        return result
        */
        
        var root = root
        var stack = [TreeNode]()
        var result = [Int]()
        
        while !stack.isEmpty || root != nil {
            while root != nil {
                result.append(root!.val)
                stack.append(root!)
                root = root?.left
            }
            let top = stack.removeLast()
            root = top.right
        }
        
        return result
    }
}
