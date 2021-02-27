//
//  101SymmetricTree.swift
//  Algorithm
//
//  Created by vchan on 2021/2/27.
//

import Foundation


extension Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        
        func isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
            if left == nil && right == nil { return true }
            if left == nil || right == nil { return false }
            
            if left!.val == right!.val {
                return isSymmetric(left!.left, right!.right) && isSymmetric(left!.right, right!.left)
            }
            
            return false
        }
        
        return isSymmetric(root?.left, root?.right)
    }
}
