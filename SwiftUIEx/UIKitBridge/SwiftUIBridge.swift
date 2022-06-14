//
//  SwiftUIEffectView.swift
//  SwiftUIEx
//
//  Created by 王荣庆 on 2021/3/4.
//

#if !os(macOS)

import UIKit
import SwiftUI

public protocol SwiftUIBridgeProtocol {
}

public extension SwiftUIBridgeProtocol where Self: View {
    /// Create a UIHostingController container for a SwiftUI View
    func createUIViewController() -> UIHostingController<Self> {
        return UIHostingController(rootView: self)
    }
}

public extension SwiftUIBridgeProtocol where Self: UIViewController {
    /// Create a SwiftUI View for a UIViewController
    @ViewBuilder
    func createSwiftUIView() -> some View {
        SwiftUIViewController(controller: self)
    }
}

public extension UIColor {
    /// 转为SwiftUI的Color
    var swiftUIColor: Color {
        return Color(self)
    }
}

#endif
