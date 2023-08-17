//
//  ImageModifier.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42)
    }
}
