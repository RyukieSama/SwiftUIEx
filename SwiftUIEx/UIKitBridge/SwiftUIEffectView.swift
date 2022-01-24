//
//  SwiftUIEffectView.swift
//  SwiftUIEx
//
//  Created by 王荣庆 on 2021/3/4.
//

#if !os(macOS)

import SwiftUI
import UIKit

public struct SwiftUIEffectView: UIViewRepresentable {

    var style: UIBlurEffect.Style

    public init(blurStyle: UIBlurEffect.Style) {
        style = blurStyle
    }
    
    public func makeUIView(context: UIViewRepresentableContext<SwiftUIEffectView>) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        return view
    }

    public func updateUIView(_ uiView: UIView,
                      context: UIViewRepresentableContext<SwiftUIEffectView>) {

    }

}

#endif
