//
//  30SubstringWithConcatenationOfAllWordsTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/13.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class SubstringWithConcatenationOfAllWordsTests: XCTestCase {

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
        
        var result = solution.findSubstring("barfoothefoobarman", ["foo", "bar"])
        XCTAssert(result == [0, 9])
        
        result = solution.findSubstring("wordgoodgoodgoodbestword", ["word","good","best","word"])
        XCTAssert(result == [])
        
        result = solution.findSubstring("barfoofoobarthefoobarman", ["bar","foo","the"])
        XCTAssert(result == [6,9,12])
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
