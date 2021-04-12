//
//  322CoinChangeTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/4/4.
//

import XCTest
@testable import Algorithm

class CoinChangeTests: XCTestCase {

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
        XCTAssert(solution.coinChange([1,2,5], 0) == 0)
        XCTAssert(solution.coinChange([1,2,5], 33) == 8)
        XCTAssert(solution.coinChange([186,419,83,408], 6249) == 20)
        XCTAssert(solution.coinChange([411,412,413,414,415,416,417,418,419,420,421,422], 9864) == 24)
        XCTAssert(solution.coinChange([430,360,440,204,206,194,150,443], 3580) == 9)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
