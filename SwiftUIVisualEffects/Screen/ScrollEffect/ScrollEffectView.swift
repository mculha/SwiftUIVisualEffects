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
        GeometryReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(Array(viewModel.imageNames.enumerated()), id: \.offset) { offset, imageName in
                        ZStack {
                            ScrollEffectRow(imageName: imageName, width: proxy.size.width)
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .offset(x: phase.value * -250)
                                }
                        }
                        .containerRelativeFrame(.horizontal, alignment: .leading)
                        .clipShape(.rect(cornerRadius: 15))
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.paging)
        }
        
    }
}

#Preview {
    ScrollEffectView()
}
