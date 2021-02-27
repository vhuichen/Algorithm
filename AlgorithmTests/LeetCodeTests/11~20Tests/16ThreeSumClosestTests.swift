//
//  16.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/6.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm

class ThreeSumClosestTests: XCTestCase {

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
        var result = solution.threeSumClosest(s, 0)
        XCTAssert(result == 0)
        
        s = [-1, 0, 1, 2, -1, -4]
        result = solution.threeSumClosest(s, 10)
        XCTAssert(result == 3)
        
        s = [-1,2,1,-4]
        result = solution.threeSumClosest(s, 1)
        XCTAssert(result == 2)
        
        s = [1,1,-1,-1,3]
        result = solution.threeSumClosest(s, 1)
        XCTAssert(result == 1)
        
        s = [1,1,-1,-1,3]
        result = solution.threeSumClosest(s, 3)
        XCTAssert(result == 3)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
        }
    }

}
