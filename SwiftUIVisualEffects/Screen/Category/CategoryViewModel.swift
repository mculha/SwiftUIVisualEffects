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
        .init(title: "Scroll Effects", image: "appwindow.swipe.rectangle", type: .scrollEffects),
        .init(title: "Color Treatments", image: "swatchpalette.fill", type: .colorTreatments),
        .init(title: "View Transitions", image: "ellipsis.viewfinder", type: .viewTransitions),
        .init(title: "Text Transitions", image: "character.textbox", type: .textTransitions),
        .init(title: "Metal Shaders", image: "roman.shade.closed", type: .metalShaders)
    ]
}
