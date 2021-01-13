//
//  29DivideTwoIntegersTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/13.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class DivideTwoIntegersTests: XCTestCase {

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
        
        XCTAssert(solution.divide(10, 3) == 3)
        XCTAssert(solution.divide(7, -3) == -2)
        XCTAssert(solution.divide(0, -3) == 0)
        XCTAssert(solution.divide(-1, -3) == 0)
        XCTAssert(solution.divide(1, 1) == 1)
        XCTAssert(solution.divide(-2147483648, -1) == 2147483647)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
