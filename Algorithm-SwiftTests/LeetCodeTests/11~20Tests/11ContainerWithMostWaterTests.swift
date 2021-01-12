//
//  11.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/3.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class ContainerWithMostWaterTests: XCTestCase {
    
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
        
        var heights = [1,1]
        assert(solution.maxArea(heights) == 1)
            
        heights = [1,8,6,2,5,4,8,3,7]
        assert(solution.maxArea(heights) == 49)
        
        heights = [1,2,1]
        assert(solution.maxArea(heights) == 2)
        
        heights = [1]
        assert(solution.maxArea(heights) == 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
