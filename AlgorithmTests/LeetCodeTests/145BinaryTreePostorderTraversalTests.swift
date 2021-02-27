//
//  145BinaryTreePostorderTraversalTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/2.
//

import XCTest
@testable import Algorithm

class BinaryTreePostorderTraversalTests: XCTestCase {

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
        var result = solution.postorderTraversal(treeNode)
        XCTAssert(result == [4,5,3,1])
        
        treeNode = CommonTreeNode.Tree([1,2,3,4,5])
        result = solution.postorderTraversal(treeNode)
        XCTAssert(result == [4,5,2,3,1])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
