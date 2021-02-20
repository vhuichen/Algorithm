//
//  12.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/4.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class IntegerToRomanTests: XCTestCase {

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
        
        assert(solution.intToRoman(3) == "III")
        assert(solution.intToRoman(4) == "IV")
        assert(solution.intToRoman(9) == "IX")
        assert(solution.intToRoman(58) == "LVIII")
        assert(solution.intToRoman(1994) == "MCMXCIV")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
