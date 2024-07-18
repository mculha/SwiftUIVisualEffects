//
//  AvatarView.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 18.07.2024.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .overlay {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.5)
                    .foregroundStyle(.white)
            }
            .frame(width: 80, height: 80)
            .compositingGroup()
    }
}

#Preview {
    AvatarView()
}
