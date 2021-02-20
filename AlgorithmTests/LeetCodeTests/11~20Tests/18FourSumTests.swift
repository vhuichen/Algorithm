//
//  18.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/6.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class FourSumTests: XCTestCase {
    
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
        var s = [-1, 0, 0, 1, 4, 5]
        var result = solution.fourSum(s, 4)
        assert(result.count == 2)
        assert(result[0] == [-1, 0, 0, 5])
        assert(result[1] == [-1, 0, 1, 4])
        
        s = [-1, 1, 0, 1, 4, 5]
        result = solution.fourSum(s, 100)
        assert(result == [])
        
        s = []
        result = solution.fourSum(s, 0)
        assert(result == [])
        
        s = [1,0,-1,0,-2,2]
        result = solution.fourSum(s, 0)
        assert(result.count == 3)
        assert(result[0] == [-2,-1,1,2])
        assert(result[1] == [-2,0,0,2])
        assert(result[2] == [-1,0,0,1])
        
        s = [1,-2,-5,-4,-3,3,3,5]
        result = solution.fourSum(s, -11)
        assert(result == [[-5,-4,-3,1]])
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
