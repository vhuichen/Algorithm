//
//  1001SortedMergeLCCITests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/28.
//

import XCTest
@testable import Algorithm

class SortedMergeLCCITests: XCTestCase {

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
        
        var A = [1,2,3,0,0,0]
        var B = [2,5,6]
        solution.merge(&A, 3, B, 3)
        XCTAssert(A == [1,2,2,3,5,6])
        
        A = [0]
        B = [2]
        solution.merge(&A, 0, B, 1)
        XCTAssert(A == [2])
        
        A = [1]
        B = []
        solution.merge(&A, 1, B, 0)
        XCTAssert(A == [1])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
