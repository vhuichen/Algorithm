//
//  33SearchInRotatedSortedArrayTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/2/9.
//

import XCTest
@testable import Algorithm_Swift

class SearchInRotatedSortedArrayTests: XCTestCase {

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
        XCTAssert(solution.search([4,5,6,7,0,1,2], 5) == 1)
        XCTAssert(solution.search([4,5,6,7,0,1,2], 0) == 4)
        XCTAssert(solution.search([4,5,6,7,0,1,2], 3) == -1)
        XCTAssert(solution.search([1], 0) == -1)
        XCTAssert(solution.search([1], 1) == 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
