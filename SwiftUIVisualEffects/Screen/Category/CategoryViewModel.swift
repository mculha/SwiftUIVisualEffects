//
//  CategoryViewModel.swift
//  SwiftUIVisualEffects
//
//  Created by Melih Çulha on 1.07.2024.
//
import SwiftUI

@Observable final class CategoryViewModel {
    
    @ObservationIgnored
    let categories: [CategoryModel] = [
        .init(title: "Scroll Transition", image: "appwindow.swipe.rectangle", type: .scrollTransition),
        .init(title: "Visual Effect", image: "list.bullet.clipboard", type: .visualEffect),
        .init(title: "Mesh Gradient", image: "swatchpalette.fill", type: .meshGradient),
        .init(title: "View Transitions", image: "ellipsis.viewfinder", type: .viewTransitions),
        .init(title: "Text Transitions", image: "character.textbox", type: .textTransitions),
        .init(title: "Metal Shaders", image: "roman.shade.closed", type: .metalShaders)
    ]
}
