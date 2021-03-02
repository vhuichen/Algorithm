//
//  141LinkedListCycleTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/3/2.
//

import XCTest
@testable import Algorithm

class LinkedListCycleTests: XCTestCase {

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
        XCTAssert(solution.hasCycle(l1) == false)
        
        let node = ListNode(5)
        var l2 = ListNode(4,node)
        l2 = ListNode(3, l2)
        l2 = ListNode(1, l2)
        node.next = l2
        
        XCTAssert(solution.hasCycle(l2) == true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
