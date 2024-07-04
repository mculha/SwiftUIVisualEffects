//
//  ContentView.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 1.07.2024.
//

import SwiftUI

struct CategoryView: View {
    @State private var viewModel: CategoryViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List(viewModel.categories, id: \.title) { category in
                NavigationLink(value: category.type) {
                    CategoryRow(category: category)
                }
            }.navigationDestination(for: CategoryType.self) { type in
                type.destination
            }
        }
    }
}

#Preview {
    CategoryView()
}
