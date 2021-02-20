//
//  94BinaryTreeInorderTraversal.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/31.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class BinaryTreeInorderTraversal: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let solution = Solution()
        var treeNode = CommonTreeNode.Tree([1,nil,3,4,5])
        var result = solution.inorderTraversal(treeNode)
        XCTAssert(result == [1,4,3,5])
        
        treeNode = CommonTreeNode.Tree([1,2,3,4,5])
        result = solution.inorderTraversal(treeNode)
        XCTAssert(result == [4,2,5,1,3])
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
