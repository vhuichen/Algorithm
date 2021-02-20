//
//  SwapNodesInPairsTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/1/11.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import XCTest
@testable import Algorithm_Swift

class SwapNodesInPairsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let head = [1,2,3,4]
        let output = [2,1,4,3]
        
        let solution = Solution()
        let list = CommonListNode.list(head)
        var result = solution.swapPairs(list)
        
        var outputList = CommonListNode.list(output)
        
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
