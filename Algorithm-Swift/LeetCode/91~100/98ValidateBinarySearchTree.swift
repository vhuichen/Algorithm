//
//  98ValidateBinarySearchTree.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/18.
//

import Foundation

extension Solution {
    /*
    //递归
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        func isValidBST(_ root: TreeNode?, _ maxVal: Int?, _ minVal: Int?) -> Bool {
            guard let root = root else { return true }
            
            if let maxVal = maxVal, root.val >= maxVal {
                return false
            }
            
            if let minVal = minVal, root.val <= minVal {
                return false
            }
            
            return isValidBST(root.left, root.val, minVal) && isValidBST(root.right, maxVal, root.val)
        }
        
        return isValidBST(root, nil, nil)
    }
    */
    
    //中序遍历
    func isValidBST(_ root: TreeNode?) -> Bool {
        var root = root
        var stack = [TreeNode]()
        var lastVal:Int?
        
        while root != nil || !stack.isEmpty {
            if root != nil {
                stack.append(root!)
                root = root!.left
            } else {
                let lastNode = stack.removeLast()
                if let lastVal = lastVal, lastVal >= lastNode.val {
                    return false
                }
                lastVal = lastNode.val
                root = lastNode.right
            }
        }
        
        return true
    }
}



