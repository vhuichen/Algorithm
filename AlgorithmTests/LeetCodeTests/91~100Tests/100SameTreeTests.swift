//
//  100SameTreeTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/18.
//

import XCTest
@testable import Algorithm

class SameTreeTests: XCTestCase {

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
        
        var p = [1,2,3]
        var q = [1,2,3]
        var pTree = CommonTreeNode.Tree(p)
        var qTree = CommonTreeNode.Tree(q)
        XCTAssert(solution.isSameTree(pTree, qTree) == true)
        
        p = [1,2]
        q = [2,1]
        pTree = CommonTreeNode.Tree(p)
        qTree = CommonTreeNode.Tree(q)
        XCTAssert(solution.isSameTree(pTree, qTree) == false)
        
        p = []
        q = []
        pTree = CommonTreeNode.Tree(p)
        qTree = CommonTreeNode.Tree(q)
        XCTAssert(solution.isSameTree(pTree, qTree) == true)
        
        p = [1]
        q = []
        pTree = CommonTreeNode.Tree(p)
        qTree = CommonTreeNode.Tree(q)
        XCTAssert(solution.isSameTree(pTree, qTree) == false)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
