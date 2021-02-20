//
//  22.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/9.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class GenerateParenthesesTests: XCTestCase {

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
        
        assert(solution.generateParenthesis(1) == ["()"])
        assert(solution.generateParenthesis(2) == ["(())", "()()"])
        assert(solution.generateParenthesis(3) == ["((()))", "(()())", "(())()", "()(())", "()()()"])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
