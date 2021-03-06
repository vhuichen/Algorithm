//
//  99RecoverBinarySearchTreeTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/27.
//

import XCTest
@testable import Algorithm

class RecoverBinarySearchTreeTests: XCTestCase {

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
        
        var tree = CommonTreeNode.Tree([1,3,nil,nil,2])
        solution.recoverTree(tree)
        var result = solution.levelOrder(tree).flatMap {$0}
        XCTAssert(result == [3,1,2])
        
        tree = CommonTreeNode.Tree([3,1,4,nil,nil,2])
        solution.recoverTree(tree)
        result = solution.levelOrder(tree).flatMap {$0}
        XCTAssert(result == [2,1,4,3])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
