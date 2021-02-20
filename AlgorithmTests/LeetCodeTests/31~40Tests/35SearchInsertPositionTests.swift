//
//  35SearchInsertPositionTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/10.
//

import XCTest
@testable import Algorithm_Swift

class SearchInsertPositionTests: XCTestCase {

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
        
        XCTAssert(solution.searchInsert([], 5) == 0)
        XCTAssert(solution.searchInsert([1,3,5,6], 5) == 2)
        XCTAssert(solution.searchInsert([1,3,5,6], 2) == 1)
        XCTAssert(solution.searchInsert([1,3,5,6], 7) == 4)
        XCTAssert(solution.searchInsert([1,3,5,6], 0) == 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
