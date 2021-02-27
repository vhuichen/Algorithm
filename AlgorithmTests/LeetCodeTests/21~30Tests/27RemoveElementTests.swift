//
//  27RemoveElementTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm

class RemoveElementTests: XCTestCase {

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
        
        var nums = [4,2,7,3,5,4,5,5,6,7,8,5,8]
        XCTAssert(solution.removeElement(&nums, 5) == 9)
        
        nums = []
        XCTAssert(solution.removeElement(&nums, 0) == 0)
        
        nums = [1,1,1,1,1,1]
        XCTAssert(solution.removeElement(&nums, 1) == 0)
        
        nums = [1]
        XCTAssert(solution.removeElement(&nums, 2) == 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
