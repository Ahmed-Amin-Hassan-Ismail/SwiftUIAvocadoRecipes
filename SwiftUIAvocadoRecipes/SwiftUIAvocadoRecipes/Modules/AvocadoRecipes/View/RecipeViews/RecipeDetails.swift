//
//  RecipeDetails.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct RecipeDetails: View {
    
    // MARK: - PROPERTIES
    
    private let recipe: RecipeModel
    
    @State private var buttonPulsate: Bool = false
    @Environment(\.presentationMode) private var presentationMode
    
    private var pulsateAnimation: Animation {
        
        Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)
    }
    
    //MARK: - INIT
    
    init(recipe: RecipeModel) {
        
        self.recipe = recipe
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(spacing: 30) {
                
                imageHeaderView
                
                recipeDetailHeaderView
                
                ingredientsText
                
                ingredientsList
                
                instructionText
                
                instructionsList
                
                Spacer()
            }
        }
        .onAppear {
            buttonPulsate.toggle()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - SETUP VIEW

extension RecipeDetails {
    
    // MARK: - Recipe
    
    private var imageHeaderView: some View {
        
        recipe.image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Button(action: {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "chevron.down.circle.fill")
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(color: .lightShadow,
                                radius: 8, x: 0, y: 0)
                        .scaleEffect(buttonPulsate ? 1.2 : 0.8)
                        .opacity(buttonPulsate ? 1.0 : 0.6)
                        .animation(pulsateAnimation, value: buttonPulsate)
                })
                .padding(40)
                , alignment: .topTrailing
            )
    }
    
    private var recipeDetailHeaderView: some View {
        
        Group {
            Text(recipe.title)
                .fontWeight(.bold)
                .modifier(TextModifier())
            
            RecipeRatingView(recipe: recipe)
            
            RecipeCookingView(recipe: recipe)
            
        }
    }
    
    // MARK: - Ingredients
    
    private var ingredientsText: some View {
        
        Text("Ingredients".uppercased())
            .fontWeight(.bold)
            .modifier(TextModifier())
    }
    
    private var ingredientsList: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            ForEach(recipe.ingredients, id: \.self) { item in
                VStack(alignment: .leading, spacing: 5) {
                    Text(item)
                        .font(.system(.footnote, design: .serif))
                        .multilineTextAlignment(.leading)
                    
                    Divider()
                }
                
            }
        }
        .padding(.horizontal)
    }
    
    // MARK: - Instructions
    
    private var instructionText: some View {
        Text("instruction".uppercased())
            .fontWeight(.bold)
            .modifier(TextModifier())
    }
    
    
    private var instructionsList: some View {
        
        ForEach(recipe.instructions, id:\.self) { item in
            VStack {
                
                Image(systemName: "chevron.down.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 42, height: 42)
                    .font(Font.title.weight(.ultraLight))
                    .foregroundColor(.adaptiveGreen)
                
                Text(item)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .font(.body)
            }
        }
        .padding(.horizontal)
    }
}


struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: recipesData[0])
    }
}
