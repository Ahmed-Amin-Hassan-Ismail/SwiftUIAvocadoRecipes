//
//  DishesView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct DishesView: View {
    
    var body: some View {
        
        VStack {
            
            Text("Avocado Dishes")
                .fontWeight(.bold)
                .modifier(TextModifier())
            
            HStack {
                
                leftDishesView
                
                middleView
                
                rightDishesView
            }
            .font(.system(.callout, design: .serif))
            .foregroundColor(.gray)
            .frame(maxHeight: 220)
        }
    }
}


// MARK: - SETUP VIEW

extension DishesView {
    
    private var leftDishesView: some View {
        VStack(spacing: 4) {
            ForEach(leftDishesData) { item in
                HStack {
                    item.image
                        .resizable()
                        .modifier(ImageModifier())
                    
                    Spacer()
                    
                    Text(item.name)
                }
                if item != leftDishesData.last {
                    Divider()
                }
            }
        }
    }
    
    private var middleView: some View {
        VStack(spacing: 16) {
            
            HStack {
                Divider()
            }
            
            Image(systemName: "heart.circle")
                .font(Font.title.weight(.ultraLight))
            
            HStack {
                Divider()
            }
            
        }
    }
    
    
    private var rightDishesView: some View {
        VStack(spacing: 4) {
            ForEach(rightDishesData) { item in
                HStack {
                    Text(item.name)
                    
                    Spacer()
                    
                    item.image
                        .resizable()
                        .modifier(ImageModifier())
                }
                if item != rightDishesData.last {
                    Divider()
                }
            }
        }
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
    }
}
