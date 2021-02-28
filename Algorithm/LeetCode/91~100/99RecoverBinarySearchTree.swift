//
//  99RecoverBinarySearchTree.swift
//  Algorithm
//
//  Created by vchan on 2021/2/27.
//

import Foundation

extension Solution {
    func recoverTree(_ root: TreeNode?) {
        var prev: TreeNode?
        var first: TreeNode?
        var second: TreeNode?
        
        func inorder(_ root: TreeNode?) {
            guard let root = root  else { return }
            inorder(root.left)
            
            if let prev = prev, prev.val > root.val {
                second = root
                if first == nil {
                    first = prev
                } else {
                    return
                }
            }
            prev = root
            
            inorder(root.right)
        }
        
        inorder(root)
        
        (first!.val, second!.val) = (second!.val, first!.val)
    }
    
    /*
    func recoverTree(_ root: TreeNode?) {
        if root == nil { return }
        
        var root = root
        var stack = [TreeNode]()
        var result = [TreeNode]()
        while !stack.isEmpty || root != nil {
            while root != nil {
                stack.append(root!)
                root = root?.left
            }
            let top = stack.removeLast()
            result.append(top)
            root = top.right
        }
        
        var change = [Int]()
        for i in 0..<(result.count - 1) {
            if result[i].val > result[i + 1].val {
                change.append(i)
            }
        }
        if change.count == 2 {
            change[1] += 1
        }
        if change.count == 1 {
            change.append(change.first! + 1)
        }
        
        (result[change[0]].val, result[change[1]].val) = (result[change[1]].val, result[change[0]].val)
    }
    */
}
