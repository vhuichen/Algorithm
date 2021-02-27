//
//  6.swift
//  AlgorithmTests
//
//  Created by vchan on 2020/12/29.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm

class ZigZagConversionTests: XCTestCase {

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
        var s = ""
        var result = solution.convert(s, 1)
        XCTAssert(result == "")
        
        s = "a"
        result = solution.convert(s, 1)
        XCTAssert(result == "a")
        
        s = "ab"
        result = solution.convert(s, 2)
        XCTAssert(result == "ab")
        
        s = "abc"
        result = solution.convert(s, 2)
        XCTAssert(result == "acb")
        
        s = "LEETCODEISHIRING"
        result = solution.convert(s, 3)
        XCTAssert(result == "LCIRETOESIIGEDHN")
        
        s = "LEETCODEISHIRING"
        result = solution.convert(s, 4)
        XCTAssert(result == "LDREOEIIECIHNTSG")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
        }
    }

}
