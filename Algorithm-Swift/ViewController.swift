//
//  ViewController.swift
//  Algorithm-Swift
//
//  Created by chenhui on 2020/12/6.
//  Copyright © 2020 vhuichen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.gray
        
        let smallHead = SmallHead(10)
        
        smallHead.push(ListNode(10))
        smallHead.push(ListNode(8))
        smallHead.push(ListNode(5))
        smallHead.push(ListNode(4))
        smallHead.push(ListNode(2))
        smallHead.push(ListNode(3))
        smallHead.push(ListNode(1))
        smallHead.push(ListNode(6))
        smallHead.push(ListNode(7))
        smallHead.push(ListNode(9))
        
        for i in 1...10 {
            let val = smallHead.pop()?.val ?? 0
            print("\(i) == \(val)")
//            assert(val == i)
        }
        smallHead.push(ListNode(99))
        smallHead.push(ListNode(9))
        smallHead.push(ListNode(19))
        smallHead.push(ListNode(33))
        smallHead.push(ListNode(57))
        smallHead.push(ListNode(31))
        smallHead.push(ListNode(86))
        smallHead.push(ListNode(49))

    }
}

extension Solution {
    
}
