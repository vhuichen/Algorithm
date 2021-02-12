//
//  37SudokuSolver.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2021/2/11.
//

import Foundation


extension Solution {
    func solveSudoku(_ board: inout [[Character]]) {
        //行
        var rows = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
        //列
        var columns = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
        //3X3方形
        var squares = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 3), count: 3)
        
        var spaces = [(x:Int, y:Int)]()
        
        func dfs(pos: Int) -> Bool {
            guard pos < spaces.count else { return true }
            
            let ps = spaces[pos]
            for digit in 0..<9 {
                if rows[ps.x][digit] || columns[ps.y][digit] || squares[ps.x / 3][ps.y / 3][digit] {
                    continue
                }
                
                rows[ps.x][digit] = true
                columns[ps.y][digit] = true
                squares[ps.x / 3][ps.y / 3][digit] = true
                board[ps.x][ps.y] = Character(String(digit + 1))
                
                if dfs(pos: pos + 1) {
                    return true
                } else {
                    rows[ps.x][digit] = false
                    columns[ps.y][digit] = false
                    squares[ps.x / 3][ps.y / 3][digit] = false
                }
            }
            return false
        }
        
        for i in 0..<9 {
            for j in 0..<9 {
                if board[i][j] == "." {
                    spaces.append((i, j))
                } else {
                    let digit = Int(board[i][j].asciiValue! - 49)
                    rows[i][digit] = true
                    columns[j][digit] = true
                    squares[i/3][j/3][digit] = true
                }
            }
        }
        
        let _ = dfs(pos: 0)
    }
    
    /*
    func solveSudoku(_ board: inout [[Character]]) {
        let numbers:Set<Character> = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        func validCharacter(_ x: Int, _ y: Int) -> Set<Character> {
            let box_start_x = x - x % 3
            let box_start_y = y - y % 3
            
            var chars:Set<Character> = Set<Character>()
            
            for i in 0..<9 {
                if board[i][x] != "." {
                    chars.insert(board[i][x])
                }
                if board[y][i] != "." {
                    chars.insert(board[y][i])
                }
                let box_x = box_start_x + i % 3
                let box_y = box_start_y + i / 3
                if board[box_y][box_x] != "." {
                    chars.insert(board[box_y][box_x])
                }
            }
            
            return numbers.subtracting(chars)
        }
        
        func isValidCharacter(_ char: Character, _ x: Int, _ y: Int) -> Bool {
            let box_start_x = x - x % 3
            let box_start_y = y - y % 3
            
            for i in 0..<9 {
                if board[i][x] == char { return false }
                if board[y][i] == char { return false }
                
                let box_x = box_start_x + i % 3
                let box_y = box_start_y + i / 3
                if board[box_y][box_x] == char { return false }
            }
            return true
        }
        
        func backtrack(_ start: Int) -> Bool {
            guard start < 81 else { return true }
            
            let x = start % 9
            let y = start / 9
            
            if board[y][x] == "." {
                let valid = validCharacter(x, y)
//                let valid:[Character] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
                for char in valid {
                    if !isValidCharacter(char, x, y) { continue }
                    
                    board[y][x] = char
                    if backtrack(start + 1) {
                        return true
                    } else {
                        board[y][x] = "."
                    }
                }
            } else {
                return backtrack(start + 1)
            }
            return false
        }
        let _ = backtrack(0)
    }
    */
}
