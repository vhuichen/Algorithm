//
//  17.LetterCombinationsOfPhoneNumber.swift
//  Algorithm
//
//  Created by vchan on 2021/1/7.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func letterCombinations(_ digits: String) -> [String] {
        /*
        //方法一：回溯
        guard digits.count > 0 else { return [] }
        
        let letterCombinations = ["2" : ["a", "b", "c"],
                                  "3" : ["d", "e", "f"],
                                  "4" : ["g", "h", "i"],
                                  "5" : ["j", "k", "l"],
                                  "6" : ["m", "n", "o"],
                                  "7" : ["p", "q", "r", "s"],
                                  "8" : ["t", "u", "v"],
                                  "9" : ["w", "x", "y", "z"]]
        
        let digitsArray = Array(digits)
        var val = [String]()
        
        func backtrack(_ array: [Character], _ combination: String) {
            if array.count == 0 {
                val.append(combination)
                return
            }
            
            let firstDigitCombinations: Array! = letterCombinations[String(array[0])]
            
            for number in firstDigitCombinations {
                backtrack(Array(array[1...]), combination + number)
            }
        }
        
        backtrack(digitsArray, "")
        
        return val
        */
        
        /*
        //方法二：回溯
        guard digits.count > 0 else { return [] }
        
        let letterCombinations = [["a", "b", "c"],
                                  ["d", "e", "f"],
                                  ["g", "h", "i"],
                                  ["j", "k", "l"],
                                  ["m", "n", "o"],
                                  ["p", "q", "r", "s"],
                                  ["t", "u", "v"],
                                  ["w", "x", "y", "z"]]
        
        let digitsArray = digits.unicodeScalars.map{ Int($0.value - 50) }
        var val = [String]()
        
        func backtrack(_ array: [Int], _ combination: String) {
            if array.count == 0 {
                val.append(combination)
                return
            }
            
            let firstDigitCombinations: Array! = letterCombinations[array[0]]
            
            for number in firstDigitCombinations {
                backtrack(Array(array[1...]), combination + number)
            }
        }
        
        backtrack(digitsArray, "")
        
        return val
        */
        
        //方法三：队列
        guard digits.count > 0 else { return [] }
        
        let letterCombinations = [["a", "b", "c"],
                                  ["d", "e", "f"],
                                  ["g", "h", "i"],
                                  ["j", "k", "l"],
                                  ["m", "n", "o"],
                                  ["p", "q", "r", "s"],
                                  ["t", "u", "v"],
                                  ["w", "x", "y", "z"]]
        
        let digitsArray = digits.unicodeScalars.map{ Int($0.value - 50) }
        var val = letterCombinations[digitsArray[0]]
        
        for digit in digitsArray[1...] {
            let valCount = val.count
            for _ in 0..<valCount {
                let head = val.removeFirst()
                let digitCombinations: Array! = letterCombinations[digit]
                for item in digitCombinations {
                    val.append(head + item)
                }
            }
        }
        
        return val
    }
    
}
