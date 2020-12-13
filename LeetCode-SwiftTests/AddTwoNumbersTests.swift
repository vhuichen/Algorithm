//
//  AddTwoNumbersTests.swift
//  LeetCode-SwiftTests
//
//  Created by chenhui on 2020/12/7.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import XCTest
@testable import LeetCode_Swift

class AddTwoNumbersTests: XCTestCase {

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
        //测试用例：链表长度不相等，有进位符
        var l1 = ListNode(9)
        l1 = ListNode(9, l1)
        l1 = ListNode(9, l1)
        l1 = ListNode(9, l1)
        
        var l2 = ListNode(9)
        l2 = ListNode(9, l2)
        
        let sumListNode = solution.addTwoNumbers(l1, l2)
        
        XCTAssert(sumListNode != nil)
        
        let targetResult = [8,9,0,0,1]
        
        var currentResult = [Int]()
        
        var currentList = sumListNode
        
        while currentList != nil {
            currentResult.append(currentList!.val)
            currentList = currentList!.next
        }
                
        XCTAssert(targetResult == currentResult)
    }

}
