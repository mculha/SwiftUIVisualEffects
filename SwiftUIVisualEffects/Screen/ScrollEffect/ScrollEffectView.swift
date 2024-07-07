//
//  ScrollEffectView.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 4.07.2024.
//

import SwiftUI

struct ScrollEffectView: View {
    @State private var viewModel: ScrollEffectViewModel = .init()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(Array(viewModel.imageNames.enumerated()), id: \.offset) { offset, imageName in
                    VStack {
                        ZStack {
                            ScrollEffectRow(imageName: imageName)
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .offset(x: phase.value * -200)
                                }
                        }
                        .containerRelativeFrame(.horizontal)
                        .clipShape(.rect(cornerRadius: 15))
                    }
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(32)
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    ScrollEffectView()
}
