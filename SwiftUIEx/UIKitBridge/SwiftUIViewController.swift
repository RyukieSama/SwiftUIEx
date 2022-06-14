//
//  SwiftUIViewController.swift
//  SwiftUIEx
//
//  Created by 王荣庆 on 2022/3/3.
//

#if !os(macOS)

import SwiftUI
import UIKit

public struct SwiftUIViewController<T: UIViewController>: UIViewControllerRepresentable {
    public typealias UIViewControllerType = T
    let controller: T
    
    public func makeUIViewController(context: Context) -> T {
        return controller
    }
    
    public func updateUIViewController(_ uiViewController: T, context: Context) {
        
    }
}
#endif

