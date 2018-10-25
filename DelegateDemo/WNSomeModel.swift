//
//  WNSomeModel.swift
//  DelegateDemo
//
//  Created by 吴楠 on 2018/10/24.
//  Copyright © 2018 wunan. All rights reserved.
//

import Foundation

class WNSomeModel {
    /// 代理
    weak var delegate:SwiftProtocol?
    // 调用协议
    func test()  {
        // > 因为swift的class没有继承NSObject。所以NSObject的需要判断是否被调用的方法`respondsToSelector:`无法使用，而在如果调用了协议方法，协议方法没有被实现，怎么办？这里如何使用。这里就就依靠Swift的特性，可空链式。
        // OC中需要两个条件的判断，即是否添加代理对象和调用的代理方法是否被实现。在Swift中都是使用需要添加可选"?"就行。当调用方法时，如果没有添加代理对象就会返回nil。当添加了协议对象但是没有实现方法，而调用了方法，函数没有实现，由于时可选性，因此返回nil。而不是奔溃。
        
        self.delegate?.swiftProtocolTest?() // 代理对象未实现swiftProtocolTest函数，并不会奔溃
        self.delegate?.clickAction?() // 代理对象实现了clickAction
    }
}

