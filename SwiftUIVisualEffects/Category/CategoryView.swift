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
                HStack {
                    Image(systemName: category.image)
                        .foregroundStyle(.blue)
                        
                    Text(category.title)
                        .font(.system(size: 16, weight: .semibold))
                        
                }
                .frame(minHeight: 40)
                
            }.navigationDestination(for: CategoryType.self, destination: destination(type:))
        }
    }
    
    private func destination(type: CategoryType) -> some View {
        switch type {
        case .scrollEffects:
            return EmptyView()
        case .colorTreatments:
            return EmptyView()
        case .viewTransitions:
            return EmptyView()
        case .textTransitions:
            return EmptyView()
        case .metalShaders:
            return EmptyView()
        }
    }
}

#Preview {
    CategoryView()
}
