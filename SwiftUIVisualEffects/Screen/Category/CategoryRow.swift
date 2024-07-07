//
//  CategoryRow.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 4.07.2024.
//

import SwiftUI

struct CategoryRow: View {
    let category: CategoryModel
    
    var body: some View {
        HStack {
            Image(systemName: category.image)
                .foregroundStyle(.blue)
                
            Text(category.title)
                .font(.system(size: 16, weight: .semibold))
                
        }
        .frame(minHeight: 40)
    }
}

#Preview {
    CategoryRow(category: .init(title: "Scroll Transition", image: "appwindow.swipe.rectangle", type: .scrollTransition))
}
