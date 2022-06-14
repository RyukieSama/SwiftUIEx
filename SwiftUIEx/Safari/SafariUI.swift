//
//  SwiftUIEffectView.swift
//  SwiftUIEx
//
//  Created by 王荣庆 on 2022/4/22.
//

import SwiftUI
import SafariServices

public struct SwiftUISafariView: UIViewControllerRepresentable {
    public init(url: URL, config: SFSafariViewController.Configuration = SFSafariViewController.Configuration()) {
        self.url = url
        self.configuration = config
    }
    
    public let url: URL
    public let configuration: SFSafariViewController.Configuration

    public func makeUIViewController(context: UIViewControllerRepresentableContext<SwiftUISafariView>) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: url, configuration: configuration)
        return safariVC
    }

    public func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SwiftUISafariView>) {
        
    }
}
