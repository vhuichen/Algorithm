//
//  121BestTimeToBuyAndSellStockTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/28.
//

import XCTest
@testable import Algorithm

class BestTimeToBuyAndSellStockTests: XCTestCase {

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
        XCTAssert(solution.maxProfit([7,1,5,3,6,4]) == 5)
        XCTAssert(solution.maxProfit([7,6,4,3,1]) == 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
