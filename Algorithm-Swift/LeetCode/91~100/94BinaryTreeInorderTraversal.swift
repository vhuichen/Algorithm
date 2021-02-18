//
//  94BinaryTreeInorderTraversal.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/31.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

//二叉树中序遍历
extension Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        /*
        /* 递归一 */
        guard let root = root else { return [] }
        return inorderTraversal(root.left) + [root.val] + inorderTraversal(root.right)
        */
        
        /*
        /* 递归二 */
        var result = [Int]()
        
        func inorderTraversal(_ root: TreeNode?, _ result: inout [Int]) {
            if root != nil {
                inorderTraversal(root!.left, &result)
                result.append(root!.val)
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
                stack.append(root!)
                root = root?.left
            }
            let top = stack.removeLast()
            result.append(top.val)
            root = top.right
        }
        
        return result
    }
}
