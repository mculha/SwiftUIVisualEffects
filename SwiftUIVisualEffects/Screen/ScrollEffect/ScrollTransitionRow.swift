//
//  ScrollTransitionRow.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 6.07.2024.
//

import SwiftUI

struct ScrollTransitionRow: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 300)
    }
}

#Preview {
    ScrollTransitionRow(imageName: "lion")
}
