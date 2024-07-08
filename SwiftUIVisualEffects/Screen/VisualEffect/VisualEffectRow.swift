//
//  VisualEffectRow.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 8.07.2024.
//

import SwiftUI

struct VisualEffectRow: View {
    
    let fruit: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(.purple)
                .frame(height: 100)
            
            Text(fruit)
                .foregroundStyle(.white.opacity(0.8))
                .font(.system(size: 24, weight: .semibold))
        }
        .visualEffect { content, proxy in
            let frame = proxy.frame(in: .scrollView(axis: .vertical))
            let distance = min(0, frame.minY)
            
            return content
                .hueRotation(.degrees(frame.origin.y / 10))
                .scaleEffect(1 + distance / 700)
                .offset(y: -distance / 1.25)
                .brightness(-distance / 400)
                .blur(radius: -distance / 50)
        }
    }
}

#Preview {
    VisualEffectRow(fruit: "Apple")
}
