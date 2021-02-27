//
//  40CombinationSumIITests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/27.
//

import XCTest
@testable import Algorithm

class CombinationSumIITests: XCTestCase {

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
        
        XCTAssert(solution.combinationSum2([10,1,2,7,6,1,5], 8) == [[1,1,6],[1,2,5],[1,7],[2,6]])
        XCTAssert(solution.combinationSum2([2,5,2,1,2], 5) == [[1,2,2],[5]])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
