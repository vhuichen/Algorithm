//
//  39CombinationSumTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/27.
//

import XCTest
@testable import Algorithm

class CombinationSumTests: XCTestCase {

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
        
        XCTAssert(solution.combinationSum([2,3,6,7], 7) == [[2,2,3],[7]])
        XCTAssert(solution.combinationSum([2,3,5], 8) == [[2,2,2,2],[2,3,3],[3,5]])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
