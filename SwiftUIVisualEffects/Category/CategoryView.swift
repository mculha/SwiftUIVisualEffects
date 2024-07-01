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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    CategoryView()
}
