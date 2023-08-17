//
//  TextModifier.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))            
            .foregroundColor(.adaptiveGreen)
    }
}
