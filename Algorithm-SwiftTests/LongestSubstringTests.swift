//
//  LongestSubstringTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2020/12/11.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class LongestSubstringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let solution = Solution()
        var longth = solution.lengthOfLongestSubstring("abcabcbb")
        XCTAssert(longth == 3)
        
        longth = solution.lengthOfLongestSubstring("bbbbb")
        XCTAssert(longth == 1)
        
        longth = solution.lengthOfLongestSubstring("pwwkew")
        XCTAssert(longth == 3)
        
        longth = solution.lengthOfLongestSubstring(" ")
        XCTAssert(longth == 1)
    }

}
