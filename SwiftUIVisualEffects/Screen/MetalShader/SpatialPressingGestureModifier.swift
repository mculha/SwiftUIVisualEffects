//
//  SpatialPressingGestureModifier.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 23.07.2024.
//
import SwiftUI

struct SpatialPressingGestureModifier: ViewModifier {
    var onPressingChanged: (CGPoint?) -> Void
    
    @State var currentLocation: CGPoint?
    
    init(action: @escaping (CGPoint?) -> Void) {
        self.onPressingChanged = action
    }
    
    func body(content: Content) -> some View {
        let gesture = SpatialPressingGesture(location: $currentLocation)
        
        content.gesture(gesture)
            .onChange(of: currentLocation, initial: false) { _, location in
                onPressingChanged(location)
            }
    }
    
}

struct SpatialPressingGesture: UIGestureRecognizerRepresentable {
    
    final class Coordinator: NSObject, UIGestureRecognizerDelegate {
        @objc
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    }
    
    @Binding var location: CGPoint?
    
    func makeCoordinator(converter: CoordinateSpaceConverter) -> Coordinator {
        Coordinator()
    }
    
    func makeUIGestureRecognizer(context: Context) -> some UILongPressGestureRecognizer {
        let recognizer = UILongPressGestureRecognizer()
        recognizer.minimumPressDuration = 0
        recognizer.delegate = context.coordinator
        
        return recognizer
    }
    
    func handleUIGestureRecognizerAction(_ recognizer: UIGestureRecognizerType, context: Context) {
        switch recognizer.state {
        case .began:
            location = context.converter.localLocation
        case .ended, .cancelled, .failed:
            location = nil
        default:
            break
        }
    }
    
}
