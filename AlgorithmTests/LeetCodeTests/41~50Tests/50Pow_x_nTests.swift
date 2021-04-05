//
//  50Pow_x_nTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/4/4.
//

import XCTest
@testable import Algorithm

class Pow_x_nTests: XCTestCase {
    
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
        let div = 1000000.0
        
        XCTAssert(Int(solution.myPow(2.2,6) * div) == Int(pow(2.2, 6) * div))
        XCTAssert(Int(solution.myPow(-2.2,6) * div) == Int(pow(-2.2, 6) * div))
        XCTAssert(Int(solution.myPow(2.2,-6) * div) == Int(pow(2.2, -6) * div))
        XCTAssert(Int(solution.myPow(-2.2,-6) * div) == Int(pow(-2.2, -6) * div))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
