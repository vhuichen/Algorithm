//
//  TwoSumTests.swift
//  LeetCode-SwiftTests
//
//  Created by chenhui on 2020/12/6.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class TwoSumTests: XCTestCase {
    var solution : Solution!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        solution = Solution()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        solution = nil
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var nums = [0, 1, 2, 3, 5, 6, 8, 10, 18, 99, 100, 150, 166, 189]
        var target = 150
        
        var result = solution.twoSum(nums, target)
        print("\(result)")
        
        XCTAssert(result.count == 2)
        var sum = nums[result[0]] + nums[result[1]]
        XCTAssert(sum == target)
        
        //
        nums = [1, 2, 3, 5, 6, 8, 10, 18, 99, 100, 149, 166, 189]
        target = 150

        result = solution.twoSum(nums, target)
        print("\(result)")
        
        XCTAssert(result.count == 2)
        sum = nums[result[0]] + nums[result[1]]
        XCTAssert(sum == target)
        
        //
        nums = [0, 1, 2, 3, 5, 6, 8, 10, 18, 99, 100, 149, 166, 189]
        target = 169
        
        result = solution.twoSum(nums, target)
        print("\(result)")
        
        XCTAssert(result.count == 2)
        sum = nums[result[0]] + nums[result[1]]
        XCTAssert(sum == target)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
