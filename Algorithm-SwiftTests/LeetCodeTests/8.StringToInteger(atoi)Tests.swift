//
//  8.StringToInteger(atoi).swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2020/12/29.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class StringToIntegerAtoiTests: XCTestCase {

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
        var atoi = solution.myAtoi(s)
        XCTAssert(atoi == 0)
        
        s = " "
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 0)
        
        s = "42"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 42)
        
        s = "-42"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == -42)
        
        s = "      -42"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == -42)
        
        s = "      42"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 42)
        
        s = "4193 with words"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 4193)
        
        s = "words and 987"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 0)
        
        s = "-91283472332"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == Int32.min)
        
        s = "91283472332"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == Int32.max)
        
        s = "+1"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 1)
        
        s = "+"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 0)
        
        s = "+-"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 0)
        
        s = "+-1"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == 0)
        
        s = "20000000000000000000"
        atoi = solution.myAtoi(s)
        XCTAssert(atoi == Int32.max)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
