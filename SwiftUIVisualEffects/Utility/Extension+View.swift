//
//  Extension+View.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 23.07.2024.
//
import SwiftUI

extension View {
    func onPressedChanged(_ action: @escaping (CGPoint?) -> Void) -> some View {
        modifier(SpatialPressingGestureModifier(action: action))
    }
}
