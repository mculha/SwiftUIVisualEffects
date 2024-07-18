//
//  ViewTransitionView.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 12.07.2024.
//

import SwiftUI

struct ViewTransitionView: View {
    private let viewModel: ViewTransitionViewModel = .init()
    
    var body: some View {
        VStack {
            if viewModel.showAvatar {
                AvatarView()
                    .transition(TwirlTransition())
            }
            
            Spacer()
            
            Button("Change Appearance of Avatar") {
                withAnimation(.linear(duration: 0.75)) {
                    viewModel.showAvatar.toggle()
                }
            }
            .frame(alignment: .bottom)
        }
        .frame(width: 250, height: 250)
        
    }
}

#Preview {
    ViewTransitionView()
}

