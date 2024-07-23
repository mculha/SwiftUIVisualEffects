//
//  RippleEffect.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 23.07.2024.
//

import SwiftUI

struct RippleEffect<T: Equatable>: ViewModifier {
    var origin: CGPoint
    var trigger: T
    var duration: TimeInterval { 3 }
    
    init(origin: CGPoint, trigger: T) {
        self.origin = origin
        self.trigger = trigger
    }
    
    func body(content: Content) -> some View {
        let origin = origin
        let duration = duration
        
        content.keyframeAnimator(initialValue: 0, trigger: trigger) { view, elapsedTime in
            view.modifier(RippleModifier(origin: origin, elapsedTime: elapsedTime, duration: duration))
        } keyframes: { _ in
            MoveKeyframe(0)
            LinearKeyframe(duration, duration: duration)
        }
    }
}

struct RippleModifier: ViewModifier {
    var origin: CGPoint
    var elapsedTime: TimeInterval
    var duration: TimeInterval
    var amplitude: Double = 12
    var frequency: Double = 15
    var decay: Double = 8
    var speed: Double = 1200
    
    func body(content: Content) -> some View {
        let shader = ShaderLibrary.Ripple(
            .float2(origin),
            .float(elapsedTime),
            .float(amplitude),
            .float(frequency),
            .float(decay),
            .float(speed)
        )
            
        let maxSampleOffet = maxSampleOffset
        let elapsedTime = elapsedTime
        let duration = duration
        
        content.visualEffect { view, _ in
            view.layerEffect(shader, maxSampleOffset: maxSampleOffet,
                             isEnabled: 0 < elapsedTime && elapsedTime < duration)
        }
    }
    
    var maxSampleOffset: CGSize {
        CGSize(width: amplitude, height: amplitude)
    }
}
