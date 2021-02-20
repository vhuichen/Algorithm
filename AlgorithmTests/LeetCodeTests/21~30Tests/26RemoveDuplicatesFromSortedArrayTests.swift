//
//  26RemoveDuplicatesFromSortedArrayTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class RemoveDuplicatesFromSortedArrayTests: XCTestCase {

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
        
        var nums = [1,1,2,2,3,3,4,5,5,6,7,8,8,8]
        XCTAssert(solution.removeDuplicates(&nums) == 8)
        
        nums = []
        XCTAssert(solution.removeDuplicates(&nums) == 0)
        
        nums = [1,1,1,1,1,1]
        XCTAssert(solution.removeDuplicates(&nums) == 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
