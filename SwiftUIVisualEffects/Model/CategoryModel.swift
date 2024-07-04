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
    case scrollEffects
    case colorTreatments
    case viewTransitions
    case textTransitions
    case metalShaders
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .scrollEffects:
            ScrollEffectView()
        case .colorTreatments:
            EmptyView()
        case .viewTransitions:
            EmptyView()
        case .textTransitions:
            EmptyView()
        case .metalShaders:
            EmptyView()
        }
    }
}
