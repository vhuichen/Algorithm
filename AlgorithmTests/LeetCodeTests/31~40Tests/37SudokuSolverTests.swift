//
//  37SudokuSolverTests.swift
//  AlgorithmTests
//
//  Created by vchan on 2021/2/11.
//

import XCTest
@testable import Algorithm_Swift

class SudokuSolverTests: XCTestCase {

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
        
        var shudu:[[Character]] = [
            ["5","3",".",".","7",".",".",".","."],
            ["6",".",".","1","9","5",".",".","."],
            [".","9","8",".",".",".",".","6","."],
            ["8",".",".",".","6",".",".",".","3"],
            ["4",".",".","8",".","3",".",".","1"],
            ["7",".",".",".","2",".",".",".","6"],
            [".","6",".",".",".",".","2","8","."],
            [".",".",".","4","1","9",".",".","5"],
            [".",".",".",".","8",".",".","7","9"]
          ]
        XCTAssert(solution.isValidSudoku(shudu) == true)
        solution.solveSudoku(&shudu)
        XCTAssert(solution.isValidSudoku(shudu) == true)
        
        for items in shudu {
            for item in items {
                XCTAssert(item != ".")
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
