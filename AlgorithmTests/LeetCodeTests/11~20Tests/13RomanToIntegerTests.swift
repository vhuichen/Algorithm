//
//  13.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/4.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class RomanToIntegerTests: XCTestCase {

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
        
        assert(solution.romanToInt("III") == 3)
        assert(solution.romanToInt("IV") == 4)
        assert(solution.romanToInt("IX") == 9)
        assert(solution.romanToInt("LVIII") == 58)
        assert(solution.romanToInt("MCMXCIV") == 1994)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
