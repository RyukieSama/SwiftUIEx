//
//  Environment+UIViewController.swift
//  SwiftUIEx
//
//  Created by 王荣庆 on 2021/3/3.
//

import UIKit
import SwiftUI

public struct ViewControllerHolder {
    public weak var value: UIViewController?
    init(_ value: UIViewController?) {
        self.value = value
    }
}

public struct ViewControllerKey: EnvironmentKey {
    public static var defaultValue: ViewControllerHolder { return ViewControllerHolder(nil) }
}

extension EnvironmentValues {
    /// Get UIViewController as environment easily
    public var viewController: ViewControllerHolder {
        get { return self[ViewControllerKey.self] }
        set { self[ViewControllerKey.self] = newValue }
    }
}

extension UIViewController {
    /// Easy present a SwiftUI view in a UIViewController
    /// - Parameters:
    ///   - presentationStyle: presentationStyle
    ///   - transitionStyle: transitionStyle
    ///   - animated: animated
    ///   - completion: completion
    ///   - builder: SwiftUI View
    public func present<Content: View>(presentationStyle: UIModalPresentationStyle = .automatic, transitionStyle: UIModalTransitionStyle = .coverVertical, animated: Bool = true, completion: @escaping () -> Void = {}, @ViewBuilder builder: () -> Content) {
        let toPresent = UIHostingController(rootView: AnyView(EmptyView()))
        toPresent.modalPresentationStyle = presentationStyle
        toPresent.rootView = AnyView(
            builder()
                // Set EnvironmentValues
                .environment(\.viewController, ViewControllerHolder(toPresent))
        )
        toPresent.view.backgroundColor = .clear
        self.present(toPresent, animated: animated, completion: completion)
    }
}
