//
//  34FindFirstAndLastPositionInSortedArrayTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/10.
//

import XCTest
@testable import Algorithm_Swift

class FindFirstAndLastPositionInSortedArrayTests: XCTestCase {

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
        
        XCTAssert(solution.searchRange([5,7,7,8,8,10], 8) == [3,4])
        XCTAssert(solution.searchRange([2,2,2,2,2,2], 2) == [0,5])
        XCTAssert(solution.searchRange([2,2], 2) == [0,1])
        XCTAssert(solution.searchRange([1], 1) == [0,0])
        XCTAssert(solution.searchRange([0,1,2,3,3,3,4,5,6,7], 3) == [3,5])
        XCTAssert(solution.searchRange([1,2,3], 1) == [0,0])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
