//
//  225ImplementStackUsingQueuesTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/28.
//

import XCTest
@testable import Algorithm

class ImplementStackUsingQueuesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let obj = MyStack()
        XCTAssert(obj.empty() == true)
        obj.push(1)
        XCTAssert(obj.empty() == false)
        obj.push(2)
        XCTAssert(obj.top() == 2)
        XCTAssert(obj.pop() == 2)
        XCTAssert(obj.top() == 1)
        XCTAssert(obj.empty() == false)
        XCTAssert(obj.pop() == 1)
        XCTAssert(obj.empty() == true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
