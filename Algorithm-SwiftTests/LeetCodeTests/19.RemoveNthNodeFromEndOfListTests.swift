//
//  19.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/8.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class RemoveNthNodeFromEndOfListTests: XCTestCase {

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
        var list = ListNode(5)
        list = ListNode(4, list)
        list = ListNode(3, list)
        list = ListNode(2, list)
        list = ListNode(1, list)
        
        var result = solution.removeNthFromEnd(list, 1)
        XCTAssert(result?.val == 1)
        XCTAssert(result?.next?.val == 2)
        XCTAssert(result?.next?.next?.val == 3)
        XCTAssert(result?.next?.next?.next?.val == 4)
        
        list = ListNode(5)
        list = ListNode(4, list)
        list = ListNode(3, list)
        list = ListNode(2, list)
        list = ListNode(1, list)
        result = solution.removeNthFromEnd(list, 2)
        XCTAssert(result?.val == 1)
        XCTAssert(result?.next?.val == 2)
        XCTAssert(result?.next?.next?.val == 3)
        XCTAssert(result?.next?.next?.next?.val == 5)
        
        list = ListNode(5)
        list = ListNode(4, list)
        list = ListNode(3, list)
        list = ListNode(2, list)
        list = ListNode(1, list)
        result = solution.removeNthFromEnd(list, 3)
        XCTAssert(result?.val == 1)
        XCTAssert(result?.next?.val == 2)
        XCTAssert(result?.next?.next?.val == 4)
        XCTAssert(result?.next?.next?.next?.val == 5)
        
        list = ListNode(5)
        list = ListNode(4, list)
        list = ListNode(3, list)
        list = ListNode(2, list)
        list = ListNode(1, list)
        result = solution.removeNthFromEnd(list, 4)
        XCTAssert(result?.val == 1)
        XCTAssert(result?.next?.val == 3)
        XCTAssert(result?.next?.next?.val == 4)
        XCTAssert(result?.next?.next?.next?.val == 5)
        
        list = ListNode(5)
        list = ListNode(4, list)
        list = ListNode(3, list)
        list = ListNode(2, list)
        list = ListNode(1, list)
        result = solution.removeNthFromEnd(list, 5)
        XCTAssert(result?.val == 2)
        XCTAssert(result?.next?.val == 3)
        XCTAssert(result?.next?.next?.val == 4)
        XCTAssert(result?.next?.next?.next?.val == 5)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
