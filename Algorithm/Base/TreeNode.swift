//
//  TreeNode.swift
//  Algorithm
//
//  Created by vchan on 2021/1/31.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int, _ leftNode: TreeNode?, _ rightNode: TreeNode?) {
        self.val = val
        self.left = leftNode
        self.right = rightNode
    }
    
    public convenience init() {
        self.init(0, nil, nil)
    }
    
    public convenience init(_ val: Int) {
        self.init(val, nil, nil)
    }
}

class CommonTreeNode {
    class func Tree(_ array:[Int?]) -> TreeNode? {
        guard !array.isEmpty else { return nil }
        
        let sum:Decimal = pow(2, array.count / 2 + 1)
        let count:Int = Int(truncating: NSDecimalNumber(decimal: sum))
        var arrayTreeIndex = 0
        
        var arrayTree = [TreeNode?](repeating: nil, count: count)
        arrayTree[arrayTreeIndex] = TreeNode(array[0]!)
        
        for i in 1..<array.count {
            guard let val = array[i] else {
                arrayTreeIndex += 1
                continue
            }
            
            while arrayTree[arrayTreeIndex / 2] == nil {
                arrayTreeIndex += 2
            }
            
            let node = arrayTree[arrayTreeIndex / 2]!
            
            arrayTreeIndex += 1
            
            arrayTree[arrayTreeIndex] = TreeNode(val)
            if arrayTreeIndex % 2 == 1 {
                node.left = arrayTree[arrayTreeIndex]
            } else {
                node.right = arrayTree[arrayTreeIndex]
            }
        }
        return arrayTree[0]
    }
}
