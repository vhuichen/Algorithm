//
//  98ValidateBinarySearchTreeTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/2/18.
//

import XCTest
@testable import Algorithm_Swift

class ValidateBinarySearchTreeTests: XCTestCase {

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
        
        XCTAssert(solution.isValidBST(CommonTreeNode.Tree([2])) == true)
        XCTAssert(solution.isValidBST(CommonTreeNode.Tree([2,1])) == true)
        XCTAssert(solution.isValidBST(CommonTreeNode.Tree([2,1,3])) == true)
        XCTAssert(solution.isValidBST(CommonTreeNode.Tree([5,1,4,nil,nil,3,6])) == false)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
