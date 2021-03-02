//
//  SwiftUIBridge.swift
//  Loviary
//
//  Created by 王荣庆 on 2021/2/19.
//

import UIKit
import SwiftUI

public protocol SwiftUIBridgeProtocol where Self: View {
    /// 快速创建一个容器控制器
    func createUIViewController() -> UIHostingController<Self>
}

public extension SwiftUIBridgeProtocol {
    func createUIViewController() -> UIHostingController<Self> {
        return UIHostingController(rootView: self)
    }
}

public extension UIColor {
    /// 转为SwiftUI的Color
    var swiftUIColor: Color {
        return Color(self)
    }
}
