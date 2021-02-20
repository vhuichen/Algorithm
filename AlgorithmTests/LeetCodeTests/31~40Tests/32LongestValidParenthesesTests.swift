//
//  32LongestValidParenthesesTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/8.
//

import XCTest
@testable import Algorithm_Swift

class LongestValidParenthesesTests: XCTestCase {
    
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
        
        XCTAssert(solution.longestValidParentheses("") == 0)
        XCTAssert(solution.longestValidParentheses("(()") == 2)
        XCTAssert(solution.longestValidParentheses(")()())") == 4)
        XCTAssert(solution.longestValidParentheses("((()))()()()") == 12)
        XCTAssert(solution.longestValidParentheses("(()()))((()))(((()))())()()()((()))(()))(())())((((((())))))))()()()()((((())))))))))()()()(") == 32)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
