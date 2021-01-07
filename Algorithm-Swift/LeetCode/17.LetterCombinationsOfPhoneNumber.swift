//
//  17.LetterCombinationsOfPhoneNumber.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/1/7.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else { return [] }
        
        let letterCombinations = ["2" : ["a", "b", "c"],
                                  "3" : ["d", "e", "f"],
                                  "4" : ["g", "h", "i"],
                                  "5" : ["j", "k", "l"],
                                  "6" : ["n", "m", "0"],
                                  "7" : ["p", "q", "r", "s"],
                                  "8" : ["t", "u", "v"],
                                  "9" : ["w", "x", "y", "z"]]
        
        let digitsArray = Array(digits)
        var val = [String]()
        
        func backtrack(_ array: [Character], _ combination: String) -> String {
            guard array.count > 0 else { return combination }
            
            
            
        }
        
        let firstDigitCombinations:Array! = letterCombinations[String(digitsArray[0])]
        
        for combination in firstDigitCombinations {
            val.append(backtrack(Array(digitsArray[1...]), combination))
        }
        
        
        return []
    }
}
