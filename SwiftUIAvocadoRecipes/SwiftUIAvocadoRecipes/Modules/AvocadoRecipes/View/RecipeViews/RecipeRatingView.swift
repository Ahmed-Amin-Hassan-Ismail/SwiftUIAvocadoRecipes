//
//  RecipeRatingView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct RecipeRatingView: View {
    
    // MARK: - PROPERTIES
    
    private let recipe: RecipeModel
    
    //MARK: - INIT
    
    init(recipe: RecipeModel) {
        
        self.recipe = recipe
    }
    
    var body: some View {
        HStack(spacing: 5, content: {
            
            ForEach(0...(recipe.rating), id: \.self) { index in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }            
        })
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
    }
}
