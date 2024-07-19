//
//  CategoryModel.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 1.07.2024.
//
import SwiftUI

struct CategoryModel {
    let title: String
    let image: String
    let type: CategoryType
}

extension CategoryModel: Hashable { }

enum CategoryType: CaseIterable {
    case scrollTransition
    case visualEffect
    case meshGradient
    case viewTransitions
    case textTransitions
    case metalShaders
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .scrollTransition:
            ScrollTransitionView()
        case .meshGradient:
            MeshGradientView()
        case .viewTransitions:
            ViewTransitionView()
        case .textTransitions:
            TextTransitionView()
        case .metalShaders:
            EmptyView()
        case .visualEffect:
            VisualEffectView()
        }
    }
}
