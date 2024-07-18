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
                Image("memoji")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 120, height: 120)
            .compositingGroup()
    }
}

#Preview {
    AvatarView()
}
