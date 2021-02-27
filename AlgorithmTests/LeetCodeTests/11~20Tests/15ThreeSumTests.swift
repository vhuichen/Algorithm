//
//  15.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/5.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm

class ThreeSumTests: XCTestCase {

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
        var s = [-1, 0, 1, 2, -1, -4]
        var result = solution.threeSum(s)
        XCTAssert(result.count == 2)
        XCTAssert((result[0] == [-1, -1, 2] && result[1] == [-1, 0, 1])
                || (result[1] == [-1, -1, 2] && result[0] == [-1, 0, 1]))
        
        s = [-1, 0, 1]
        result = solution.threeSum(s)
        XCTAssert(result[0] == [-1, 0, 1])
        
        s = [-1, 0, 2, 3, 4, 5]
        result = solution.threeSum(s)
        XCTAssert(result == [])
        
        s = [0,0,0,0]
        result = solution.threeSum(s)
        XCTAssert(result[0] == [0,0,0])
        XCTAssert(result.count == 1)
        
        
        s = [-2,0,1,1,2]
        result = solution.threeSum(s)
        XCTAssert(result.count == 2)
        XCTAssert(result[0] == [-2,0,2] || result[0] == [-2,1,1])
        XCTAssert(result[1] == [-2,0,2] || result[1] == [-2,1,1])
        
        s = [-2,0,0,2,2]
        result = solution.threeSum(s)
        XCTAssert(result.count == 1)
        XCTAssert(result[0] == [-2,0,2])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
