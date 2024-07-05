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
                LazyHStack(spacing: 22) {
                    ForEach(Array(viewModel.imageNames.enumerated()), id: \.offset) { offset, imageName in
                        ZStack {
                            
                            Image(imageName)
                                .resizable()
                                .fixedSize(horizontal: false, vertical: true)
                                .scaledToFill()
                                .frame(width: proxy.size.width - 44, height: 300)
                                .clipped()
                                .clipShape(.rect(cornerRadius: 15))
                                .padding(.leading, 0)
                                .padding(.trailing, 22)
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
