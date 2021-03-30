//
//  SortTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/3/7.
//

import XCTest
@testable import Algorithm

class SortTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var num1 = [1,0,9,8,2,3,5,6,8,9,11,35,7,0,3,1,7]
        var num11 = num1
        num11.sort()
        QuickSort.sort1(&num1)
        XCTAssert(num11 == num1)
        
        var num2 = [1,0,9,8,2,3,5,6,8,9,11,35,7,0,3,1,7,33,55,1,2,7,4,9,111,0,88,5]
        var num22 = num2
        QuickSort.sort2(&num2)
        num22.sort()
        XCTAssert(num22 == num2)

        var num3 = [1,0,9,8,2,3,5,6,55,99,333,77,6,3,1,8,77,99,66,77,33,2,4,5,73,8,9,11,35,7,0,3,1,7]
        var num33 = num3
        num33.sort()
        QuickSort.sort3(&num3)
        XCTAssert(num33 == num3)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
