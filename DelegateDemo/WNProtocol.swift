//
//  WNProtocol.swift
//  DelegateDemo
//
//  Created by 吴楠 on 2018/10/24.
//  Copyright © 2018 wunan. All rights reserved.
//

import Foundation
// 协议 swift4 下，只有继承NSObjectProtocol的协议，才能有可选函数
@objc protocol SwiftProtocol:NSObjectProtocol {
    @objc optional func clickAction()
    @objc optional func swiftProtocolTest()
}
