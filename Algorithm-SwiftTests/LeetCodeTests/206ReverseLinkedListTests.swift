//
//  206ReverseLinkedListTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/12.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class ReverseLinkedListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let input = [1,2,3,4,5]
        let output = [5,4,3,2,1]
        
        let solution = Solution()
        let inputList = CommonListNode.list(input)
        var outputList = CommonListNode.list(output)
        //
        var result = solution.reverseList(inputList)
        
        while result != nil, outputList != nil {
            XCTAssert(result?.val == outputList?.val)
            
            result = result?.next
            outputList = outputList?.next
        }
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
