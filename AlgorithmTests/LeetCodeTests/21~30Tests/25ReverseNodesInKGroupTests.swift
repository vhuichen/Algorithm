//
//  ReverseNodesInKGroupTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/11.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class ReverseNodesInKGroupTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let head = [1,2,3,4,5]
        var output = [3,2,1,4,5]
        
        let solution = Solution()
        var list = CommonListNode.list(head)
        var result = solution.reverseKGroup(list, 3)
        
        var outputList = CommonListNode.list(output)
        
        repeat {
            XCTAssert(result?.val == outputList?.val)
            
            result = result?.next
            outputList = outputList?.next
            
        } while result != nil || outputList != nil
        
        
        list = CommonListNode.list(head)
        result = solution.reverseKGroup(list, 2)
        
        output = [2,1,4,3,5]
        outputList = CommonListNode.list(output)
        
        repeat {
            XCTAssert(result?.val == outputList?.val)
            
            result = result?.next
            outputList = outputList?.next
            
        } while result != nil || outputList != nil
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
