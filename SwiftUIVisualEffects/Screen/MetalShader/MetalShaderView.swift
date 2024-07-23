//
//  MetalShaderView.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 22.07.2024.
//

import SwiftUI

struct MetalShaderView: View {
    @State private var viewModel: MetalShaderViewModel = .init()
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("palm_tree")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                
                .onPressedChanged { point in
                    guard let point else { return }
                    viewModel.origin = point
                    viewModel.counter += 1
                }
                .modifier(RippleEffect(origin: viewModel.origin, trigger: viewModel.counter))
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    MetalShaderView()
}
