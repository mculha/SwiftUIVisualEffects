//
//  CategoryModel.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 1.07.2024.
//

struct CategoryModel {
    let title: String
    let image: String
    let type: CategoryType
}

enum CategoryType: CaseIterable {
    case scrollEffects
    case colorTreatments
    case viewTransitions
    case textTransitions
    case metalShaders
}
