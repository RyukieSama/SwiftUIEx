//
//  SwiftUIPlatformViewRepresentable.swift
//  SwiftUIEx
//
//  Created by wrq on 2023/6/13.
//

import SwiftUI

#if os(macOS)
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public typealias SwiftUIPlatformViewRepresentable = NSViewRepresentable
#endif
#if os(iOS) || os(tvOS)
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public typealias SwiftUIPlatformViewRepresentable = UIViewRepresentable
#endif
#if os(watchOS)
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public typealias SwiftUIPlatformViewRepresentable = WKInterfaceObjectRepresentable
#endif
