//
//  237DeleteNodeInALinkedListTests.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/31.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class DeleteNodeInALinkedListTests: XCTestCase {

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
        
        var list = CommonListNode.list([1,2,3,4,5,7,8,9,0])
        var delete = list?.next?.next?.next?.next?.next
        var result = CommonListNode.list([1,2,3,4,5,8,9,0])
        
        solution.deleteNode(delete)
        XCTAssert(CommonListNode.isEqual(result, list))
        
        list = CommonListNode.list([1,2,3,4,5,7,8,9,0])
        delete = list
        result = CommonListNode.list([2,3,4,5,7,8,9,0])
        
        solution.deleteNode(delete)
        XCTAssert(CommonListNode.isEqual(result, list))
        
        list = CommonListNode.list([1,0])
        delete = list
        result = CommonListNode.list([0])
        
        solution.deleteNode(delete)
        XCTAssert(CommonListNode.isEqual(result, list))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
