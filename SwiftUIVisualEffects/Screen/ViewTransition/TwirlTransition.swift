//
//  TwirlTransition.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 18.07.2024.
//

import SwiftUI

struct TwirlTransition: Transition {
    
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .scaleEffect(phase.isIdentity ? 1 : 0)
            .opacity(phase.isIdentity ? 1 : 0)
            .blur(radius: phase.isIdentity ? 0 : 10)
            .rotationEffect(
                .degrees(
                    phase == .willAppear ? 360 :
                        phase == .didDisappear ? -360 : .zero
                )
            )
            .brightness(phase == .willAppear ? 1.0 : 0)
    }
}
