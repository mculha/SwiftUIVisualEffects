//
//  VisualEffect.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 8.07.2024.
//

import SwiftUI

struct VisualEffectView: View {
    @State private var viewModel: VisualEffectViewModel = .init()
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 16) {
                ForEach(viewModel.fruits, id: \.self) { fruit in
                    VisualEffectRow(fruit: fruit)
                }
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    VisualEffectView()
}
