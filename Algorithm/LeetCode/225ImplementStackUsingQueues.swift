//
//  225ImplementStackUsingQueues.swift
//  Algorithm
//
//  Created by vchan on 2021/2/28.
//

import Foundation

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
class MyStack {
    private let min:Int = 10
    private var array = [Int]()
    private var sum:Int = 0
    private var current:Int = 0
    
    /** Initialize your data structure here. */
    init() {
        sum = min
        array = [Int](repeating: 0, count: sum)
        current = 0
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        //超过容器，则需要扩容
        if current == sum {
            var temp = [Int](repeating: 0, count: sum * 2)
            for i in 0..<sum {
                temp[i] = array[i]
            }
            sum *= 2
            array = temp
        }
        
        array[current] = x
        current += 1
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        let topVal = top()
        current -= 1
        
        //小于一定值才减容，注意扩容和减容的判断条件最好不要相等
        if current < sum / 4 && sum > min {
            var temp = [Int](repeating: 0, count: sum / 2)
            for i in 0..<current {
                temp[i] = array[i]
            }
            sum /= 2
            array = temp
        }
        
        return topVal
    }
    
    /** Get the top element. */
    func top() -> Int {
        array[current - 1]
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        current == 0
    }
}
