//
//  38CountAndSayTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/27.
//

import XCTest
@testable import Algorithm

class CountAndSayTests: XCTestCase {

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
        
        XCTAssert(solution.countAndSay(1) == "1")
        XCTAssert(solution.countAndSay(2) == "11")
        XCTAssert(solution.countAndSay(3) == "21")
        XCTAssert(solution.countAndSay(4) == "1211")
        XCTAssert(solution.countAndSay(5) == "111221")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
