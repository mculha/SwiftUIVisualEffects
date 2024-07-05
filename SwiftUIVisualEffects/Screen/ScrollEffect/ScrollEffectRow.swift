//
//  ScrollEffectRow.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 6.07.2024.
//

import SwiftUI

struct ScrollEffectRow: View {
    
    let imageName: String
    let width: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .fixedSize(horizontal: false, vertical: true)
            .scaledToFill()
            .frame(width: width - 22, height: 300)
            .clipped()
            .clipShape(.rect(cornerRadius: 15))
            .padding(.leading, 11)
            .padding(.trailing, 0)
            
    }
}

#Preview {
    ScrollEffectRow(imageName: "lion", width: 300)
}
