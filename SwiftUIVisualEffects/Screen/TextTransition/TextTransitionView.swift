//
//  TextTransitionView.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 19.07.2024.
//

import SwiftUI

struct TextTransitionView: View {
    @State private var viewModel: TextTransitionViewModel = .init()
    
    var body: some View {
        VStack {
            GroupBox {
                Toggle("Visible", isOn: $viewModel.isVisible.animation())
            }

            Spacer()

            if viewModel.isVisible {
                let visualEffects = Text("Visual Effects")
                    .customAttribute(EmphasisAttribute())
                    .foregroundStyle(.pink)
                    .bold()

                Text("Build \(visualEffects) with SwiftUI 🧑‍💻")
                    .font(.system(.title, design: .rounded, weight: .semibold))
                    .frame(width: 250)
                    .transition(TextTransition())
            }

            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()

    }
}

#Preview {
    TextTransitionView()
}
