//
//  FindMedianSortedArraysTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2020/12/12.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class FindMedianSortedArraysTests: XCTestCase {
    
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
        var num1 = [1]
        var num2 = [1]
        var middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1)
        
        num1 = [1]
        num2 = []
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1)
        
        num1 = []
        num2 = [1]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1)
        
        num1 = []
        num2 = [1]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1)
        
        num1 = [1,2]
        num2 = [3,4]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 2.5)
        
        num1 = [0,0]
        num2 = [0,0]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 0)
        
        num1 = [1,2]
        num2 = [1,2,3]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 2)
        
        num1 = [1]
        num2 = [2]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1.5)
        
        num1 = [2]
        num2 = [1]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1.5)
        
        num1 = [1]
        num2 = [1]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 1)
        
        num1 = [2]
        num2 = [1,3,4]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 2.5)
        
        num1 = [100000]
        num2 = [100001]
        middle = solution.findMedianSortedArrays(num1, num2)
        XCTAssert(middle == 100000.5)
        
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
