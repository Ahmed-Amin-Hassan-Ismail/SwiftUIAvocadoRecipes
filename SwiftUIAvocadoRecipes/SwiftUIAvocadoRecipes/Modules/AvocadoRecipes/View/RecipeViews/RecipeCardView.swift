//
//  RecipeCardView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var shouldShowRecipeDetails: Bool = false
    
    private let recipe: RecipeModel
    private let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    
    
    // MARK: - INIT
    
    init(recipe: RecipeModel) {
        
        self.recipe = recipe
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            recipeCardView
            
            recipeDetails
        }
        
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
        .shadow(color: .lightShadow,
                radius: 8, x: 0, y: 0)
        .onTapGesture {
            withAnimation {
                hapticImpact.impactOccurred()
                shouldShowRecipeDetails = true
            }
        }
        .sheet(isPresented: $shouldShowRecipeDetails) {
            RecipeDetails(recipe: recipe)
        }
        
    }
}

// MARK: - SETUP View

extension RecipeCardView {
    
    
    private var recipeCardView: some View {
        
        recipe.image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Image(systemName: "bookmark")
                    .font(Font.title.weight(.light))
                    .foregroundColor(.white)
                    .padding()
                , alignment: .topTrailing
            )
    }
    
    private var recipeDetails: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Text(recipe.title)
                .fontWeight(.bold)
                .modifier(TextModifier())
            
            
            Text(recipe.headline)
                .font(.system(.body, design: .serif))
                .foregroundColor(.gray)
                .italic()
            
            RecipeRatingView(recipe: recipe)
            
            RecipeCookingView(recipe: recipe)
        }
        .padding()
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
    }
}
