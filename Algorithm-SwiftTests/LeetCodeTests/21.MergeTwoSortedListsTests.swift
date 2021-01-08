//
//  21.swift
//  Algorithm-SwiftTests
//
//  Created by chenhui on 2021/1/8.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class MergeTwoSortedListsTests: XCTestCase {

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
        
        var l1 = ListNode(4)
        l1 = ListNode(2, l1)
        l1 = ListNode(1, l1)
        
        var l2 = ListNode(4)
        l2 = ListNode(3, l2)
        l2 = ListNode(1, l2)
        
        var result = solution.mergeTwoLists(l1, l2)
        XCTAssert(result!.val == 1)
        XCTAssert(result!.next!.val == 1)
        XCTAssert(result!.next!.next!.val == 2)
        XCTAssert(result!.next!.next!.next!.val == 3)
        XCTAssert(result!.next!.next!.next!.next!.val == 4)
        XCTAssert(result!.next!.next!.next!.next!.next!.val == 4)
        
        
        l2 = ListNode(0)
        result = solution.mergeTwoLists(nil, l2)
        XCTAssert(result!.val == 0)
        
        
        result = solution.mergeTwoLists(nil, nil)
        XCTAssert(result == nil)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
