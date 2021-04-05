//
//  191NumberOfOneBitsTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/4/4.
//

import XCTest
@testable import Algorithm

class NumberOfOneBitsTests: XCTestCase {

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

        XCTAssert(solution.hammingWeight(0b000001011) == 3)
        XCTAssert(solution.hammingWeight(0b100000000) == 1)
        XCTAssert(solution.hammingWeight(0b111) == 3)
        XCTAssert(solution.hammingWeight(0b000) == 0)
        XCTAssert(solution.hammingWeight(0b001) == 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
