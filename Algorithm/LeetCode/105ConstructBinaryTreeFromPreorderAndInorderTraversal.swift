//
//  105ConstructBinaryTreeFromPreorderAndInorderTraversal.swift
//  Algorithm
//
//  Created by vchan on 2021/4/5.
//

import Foundation

extension Solution {
    
    func buildTree1(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        
        guard preorder.count > 0 && inorder.count > 0 else { return nil }
        
        func inorderIndex(_ inorder: [Int], _ val: Int) -> Int {
            for i in 0..<inorder.count where inorder[i] == val {
                return i
            }
            return -1
        }
        
        func subArray(_ array: [Int], _ start: Int, _ length: Int) -> [Int] {
            var subArray = [Int](repeating: 0, count: length)
            
            for i in start..<(length + start) {
                subArray[i - start] = array[i]
            }
            return subArray
        }
        
        let tree = TreeNode(preorder[0])
        let index = inorderIndex(inorder, preorder[0])
        
        if index > 0 {
            let leftPreorder = subArray(preorder, 1, index)
            let leftInorder = subArray(inorder, 0, index)
            tree.left = buildTree(leftPreorder, leftInorder)
        }
        
        let start = index + 1
        let length = preorder.count - start
        if length > 0 {
            let rightPreorder = subArray(preorder, start, length)
            let rightInorder = subArray(inorder, start, length)
            tree.right = buildTree(rightPreorder, rightInorder)
        }
        
        return tree
    }
    
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var inorderMap = [Int:Int]()
        for i in 0..<inorder.count {
            inorderMap[inorder[i]] = i
        }
        
        func buildTree(_ preorder: [Int],
                       _ inorder: [Int],
                       _ preorderLeft: Int,
                       _ preorderRight: Int,
                       _ inorderLeft: Int,
                       _ inorderRight: Int) -> TreeNode? {
            if preorderLeft > preorderRight || inorderLeft > inorderRight { return nil }
            
            let tree = TreeNode(preorder[preorderLeft])
            let rootIndex = inorderMap[preorder[preorderLeft]]!
            let length = rootIndex - inorderLeft
            
            tree.left = buildTree(preorder,
                                  inorder,
                                  preorderLeft + 1,
                                  preorderLeft + length,
                                  inorderLeft,
                                  rootIndex - 1)
            
            tree.right = buildTree(preorder,
                                   inorder,
                                   preorderLeft + length + 1,
                                   preorderRight,
                                   rootIndex + 1,
                                   inorderRight)
            
            return tree
        }
        
        return buildTree(preorder, inorder, 0, preorder.count - 1, 0, inorder.count - 1)
    }
}
