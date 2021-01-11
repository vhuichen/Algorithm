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
        
        var array = [ListNode?]()
        
        for _ in 0..<10 {
            array.append(ListNode(Int(arc4random()) % 100))
        }
        
        let smallHead = SmallHeap(array)
        
        for i in 1...10 {
            let val = smallHead.pop()?.val ?? 0
            print("\(i) == \(val)")
        }

    }
}

extension Solution {
    
}
