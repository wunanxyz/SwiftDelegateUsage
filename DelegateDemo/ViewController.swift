//
//  ViewController.swift
//  DelegateDemo
//
//  Created by 吴楠 on 2018/10/24.
//  Copyright © 2018 wunan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let model = WNSomeModel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        model.delegate = self
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        model.test()
    }
}

extension ViewController:SwiftProtocol{
    func clickAction() {
        print("swift clickAction")
    }
}

