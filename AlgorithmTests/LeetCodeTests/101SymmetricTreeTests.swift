//
//  101SymmetricTreeTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/27.
//

import XCTest
@testable import Algorithm

class SymmetricTreeTests: XCTestCase {

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
        
        var list = CommonTreeNode.Tree([1,2,2,3,4,4,3])
        XCTAssert(solution.isSymmetric(list) == true)
        
        list = CommonTreeNode.Tree([1,2,2,nil,3,nil,3])
        XCTAssert(solution.isSymmetric(list) == false)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
