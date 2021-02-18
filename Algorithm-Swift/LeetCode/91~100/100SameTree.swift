//
//  100SameTree.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/18.
//

import Foundation

extension Solution {
    /*
    //深度优先搜索
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        if p == nil || q == nil { return false }
        if p!.val != q!.val { return false }
        
        return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
    }
    */
    
    //广度优先搜索
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if  p == nil && q == nil { return true }
        if  p == nil || q == nil { return false }
        
        var pQueue = [TreeNode]()
        var qQueue = [TreeNode]()
        
        pQueue.append(p!)
        qQueue.append(q!)
        
        while !pQueue.isEmpty && !qQueue.isEmpty {
            let pNode = pQueue.removeFirst()
            let qNode = qQueue.removeFirst()
            
            if pNode.val != qNode.val {
                return false
            }
            
            if pNode.left != nil && qNode.left != nil {
                pQueue.append(pNode.left!)
                qQueue.append(qNode.left!)
            } else if (pNode.left != nil || qNode.left != nil) {
                return false
            }
            
            if pNode.right != nil && qNode.right != nil {
                pQueue.append(pNode.right!)
                qQueue.append(qNode.right!)
            } else if (pNode.right != nil || qNode.right != nil) {
                return false
            }
        }
        
        return pQueue.isEmpty && qQueue.isEmpty
    }
}
