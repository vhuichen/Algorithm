//
//  30SubstringWithConcatenationOfAllWords.swift
//  Algorithm
//
//  Created by vchan on 2021/1/13.
//  Copyright © 2021 vhuichen. All rights reserved.
//

import Foundation

extension Solution {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        let sArray = Array(s)
        let wordCount = words[0].count
        let wordsCount = wordCount * words.count
        
        if sArray.count < wordsCount { return [] }
        
        var wordDict = [[Character] : Int]()
        
        for word in words {
            let wordArray = Array(word)
            wordDict[wordArray] = (wordDict[wordArray] ?? 0) + 1
        }
        
        var valArray = [Int]()
        
        for i in 0..<wordCount {
            var j = i
            while j <= (sArray.count - wordsCount) {
                var last = j + wordsCount
                var subStringDict = [[Character]: Int]()
                var isEqual = true
                
                while j < last {
                    let key = Array(sArray[(last - wordCount)..<last])
                    subStringDict[key] = (subStringDict[key] ?? 0) + 1
                    if subStringDict[key]! > (wordDict[key] ?? 0) {
                        isEqual = false
                        break
                    }
                    last -= wordCount
                }
                
                if isEqual {
                    if subStringDict == wordDict {
                        valArray.append(j)
                    }
                    j += wordCount
                } else {
                    j = last
                }
            }
        }
        
        return valArray
    }
}
