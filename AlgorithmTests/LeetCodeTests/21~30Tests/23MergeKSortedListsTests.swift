//
//  MergeKSortedListsTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/9.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm

class MergeKSortedListsTests: XCTestCase {

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
        
        var lists = [ListNode?]()
        
        var list = ListNode(5)
        list = ListNode(4, list)
        list = ListNode(1, list)
        lists.append(list)
        
        list = ListNode(4)
        list = ListNode(3, list)
        list = ListNode(1, list)
        lists.append(list)
        
        list = ListNode(6)
        list = ListNode(2, list)
        lists.append(list)
        
        var result = solution.mergeKLists(lists)
        
        var head = ListNode(0, result)
        
        let array = [1, 1, 2, 3, 4, 4, 5, 6]
        
        for item in array {
            XCTAssert(head.next?.val == item)
            head.next = head.next?.next
        }
        XCTAssert(head.next == nil)
        
        //
        result = solution.mergeKLists([])
        XCTAssert(result == nil)
        
        //
        let emptyList:ListNode? = nil
        result = solution.mergeKLists([emptyList])
        XCTAssert(result == nil)
        
        //[[],[-1,5,11],[],[6,10]]
        lists = [ListNode?]()
        lists.append(nil)
        
        list = ListNode(11)
        list = ListNode(5, list)
        list = ListNode(-1, list)
        lists.append(list)
        
        lists.append(nil)
        
        list = ListNode(10)
        list = ListNode(6, list)
        lists.append(list)
        
        result = solution.mergeKLists(lists)
        
        head = ListNode(0, result)
        
        let array1 = [-1, 5, 6, 10, 11]
        
        for item in array1 {
            XCTAssert(head.next?.val == item)
            head.next = head.next?.next
        }
        XCTAssert(head.next == nil)
        
        list = ListNode(1)
        
        result = solution.mergeKLists([list])
        XCTAssert(result?.val == 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
