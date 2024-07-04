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
                        Image(imageName)
                            .resizable()
                            .fixedSize(horizontal: false, vertical: true)
                            .scaledToFill()
                            .frame(width: proxy.size.width - 22, height: 300)
                            .clipped()
                            .clipShape(.rect(cornerRadius: 15))
                            .padding(.leading, offset == 0 ? 11 : 0)
                            .padding(.trailing, offset == (viewModel.imageNames.count - 1) ? 11 : 0)
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
