//
//  283MoveZeroesTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/28.
//

import XCTest
@testable import Algorithm

class MoveZeroesTests: XCTestCase {

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
        var array = [0,1,0,3,12]
        
        solution.moveZeroes(&array)
        XCTAssert(array == [1,3,12,0,0])
        
        array = [0,0]
        solution.moveZeroes(&array)
        XCTAssert(array == [0,0])
        
        array = [1,3,12]
        solution.moveZeroes(&array)
        XCTAssert(array == [1,3,12])

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
