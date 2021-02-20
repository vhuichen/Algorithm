//
//  31NextPermutationTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/20.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class NextPermutationTests: XCTestCase {

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
        var array = [1,2,3]
        solution.nextPermutation(&array)
        XCTAssert(array == [1,3,2])
        
        array = [3,2,1]
        solution.nextPermutation(&array)
        XCTAssert(array == [1,2,3])
        
        array = [1,1,5]
        solution.nextPermutation(&array)
        XCTAssert(array == [1,5,1])
        
        array = [1,3,2]
        solution.nextPermutation(&array)
        XCTAssert(array == [2,1,3])
        
        array = [2,3,1]
        solution.nextPermutation(&array)
        XCTAssert(array == [3,1,2])
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
