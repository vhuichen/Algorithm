//
//  95UniqueBinarySearchTreesIITests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/13.
//

import XCTest
@testable import Algorithm_Swift

class UniqueBinarySearchTreesIITests: XCTestCase {

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
        let result = solution.generateTrees(3)
        
//        let nums = [[1,nil,3,2],
//                    [3,2,nil,1],
//                    [3,1,nil,nil,2],
//                    [2,1,3],
//                    [1,nil,2,nil,3]]
        let nums = [
            [1,2,3],
            [1,3,2],
            [2,1,3],
            [3,1,2],
            [3,2,1],
        ]
        
        var resultNums = [[Int]]()
        for item in result {
            resultNums.append(solution.levelOrder(item).flatMap{$0})
        }
        XCTAssert(nums == resultNums)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
