//
//  9.swift
//  AlgorithmTests
//
//  Created by vchan on 2020/12/31.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class PalindromeNumberTests: XCTestCase {

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
        
        XCTAssert(solution.isPalindrome(-1) == false)
        
        XCTAssert(solution.isPalindrome(0) == true)
        
        XCTAssert(solution.isPalindrome(1) == true)
        
        XCTAssert(solution.isPalindrome(10) == false)
        
        XCTAssert(solution.isPalindrome(121) == true)
        
        XCTAssert(solution.isPalindrome(1221) == true)
        
        XCTAssert(solution.isPalindrome(12221) == true)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
        }
    }

}
