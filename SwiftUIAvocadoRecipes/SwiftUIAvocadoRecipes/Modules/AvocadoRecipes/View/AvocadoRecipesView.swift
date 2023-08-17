//
//  AvocadoRecipesView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct AvocadoRecipesView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(spacing: 40) {
                
                HeaderView()
                    .frame(height: 350)
                
                DishesView()
                    .padding(.horizontal)
                
                FactsView()
                
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TextModifier())
                
                VStack(spacing: 16) {
                    ForEach(recipesData) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }
                
                FooterView()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct AvocadoRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoRecipesView()
    }
}
