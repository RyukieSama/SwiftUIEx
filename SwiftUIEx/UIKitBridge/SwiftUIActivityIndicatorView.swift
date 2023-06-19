//
//  SwiftUIActivityIndicatorView.swift
//  SwiftUIEx
//
//  Created by wrq on 2023/6/13.
//

import SwiftUI

#if os(macOS) || os(iOS) || os(tvOS)
/// An activity indicator (system style)
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct SwiftUIActivityIndicatorView: SwiftUIPlatformViewRepresentable {
    @Binding var isAnimating: Bool
    var style: Style
    
    /// Create the indicator with animation binding and style
    /// - Parameters:
    ///   - isAnimating: The binding to control the animation
    ///   - style: The indicator style
    public init(_ isAnimating: Binding<Bool>, style: Style = .medium) {
        self._isAnimating = isAnimating
        self.style = style
    }
    
    #if os(macOS)
    public typealias NSViewType = NSProgressIndicator
    #elseif os(iOS) || os(tvOS)
    public typealias UIViewType = UIActivityIndicatorView
    #endif
    
    #if os(iOS) || os(tvOS)
    public func makeUIView(context: UIViewRepresentableContext<SwiftUIActivityIndicatorView>) -> UIActivityIndicatorView {
        let activityStyle: UIActivityIndicatorView.Style
        switch style {
        case .medium:
            activityStyle = .medium
        case .large:
            activityStyle = .large
        }
        let indicator = UIActivityIndicatorView(style: activityStyle)
        indicator.hidesWhenStopped = true
        return indicator
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<SwiftUIActivityIndicatorView>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
    #endif
    
    #if os(macOS)
    public func makeNSView(context: NSViewRepresentableContext<SwiftUIActivityIndicatorView>) -> NSProgressIndicator {
        let controlSize: NSControl.ControlSize
        switch style {
        case .medium:
            controlSize = .small
        case .large:
            controlSize = .regular
        }
        let indicator = NSProgressIndicator()
        indicator.style = .spinning
        indicator.controlSize = controlSize
        indicator.isDisplayedWhenStopped = false
        return indicator
    }
    
    public func updateNSView(_ nsView: NSProgressIndicator, context: NSViewRepresentableContext<SwiftUIActivityIndicatorView>) {
        isAnimating ? nsView.startAnimation(nil) : nsView.stopAnimation(nil)
    }
    
    #endif
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUIActivityIndicatorView {
    public enum Style {
        case medium
        case large
    }
}
#endif
