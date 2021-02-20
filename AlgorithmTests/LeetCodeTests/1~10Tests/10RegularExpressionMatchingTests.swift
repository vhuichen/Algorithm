//
//  10.swift
//  AlgorithmTests
//
//  Created by vchan on 2020/12/31.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class RegularExpressionMatchingTests: XCTestCase {

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
        
        XCTAssert(solution.isMatch("", "") == true)
        XCTAssert(solution.isMatch("", "a") == false)
        XCTAssert(solution.isMatch("a", "") == false)
        XCTAssert(solution.isMatch("aa", "a") == false)
        XCTAssert(solution.isMatch("aa", "a*") == true)
        XCTAssert(solution.isMatch("ab", ".*") == true)
        XCTAssert(solution.isMatch("aab", "c*a*b") == true)
        XCTAssert(solution.isMatch("mississippi", "mis*is*p*.") == false)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
