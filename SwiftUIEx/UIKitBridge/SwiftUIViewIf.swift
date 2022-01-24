//
//  SwiftUIEffectView.swift
//  SwiftUIEx
//
//  Created by 王荣庆 on 2021/3/4.
//
import SwiftUI

public extension View {
    @ViewBuilder
    func ifIs<T>(_ condition: Bool, closure: (Self) -> T) -> some View where T: View {
        if condition {
            closure(self)
        } else {
            self
        }
    }

    @ViewBuilder
    func ifElse<T:View,V:View>( _ condition: Bool, closure: (Self) -> T, elseClosure: (Self) -> V) -> some View {
        if condition {
            closure(self)
        } else {
            elseClosure(self)
        }
    }
}
