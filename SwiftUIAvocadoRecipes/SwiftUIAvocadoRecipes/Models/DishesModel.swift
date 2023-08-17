//
//  DishesModel.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI


struct DishesModel: Identifiable, Equatable {
    
    var id = UUID()
    var name: String
    var image: Image
}


let leftDishesData = [
    DishesModel(name: "Toast", image: .toasts),
    DishesModel(name: "Tacos", image: .tacos),
    DishesModel(name: "Salads", image: .salads),
    DishesModel(name: "Spreads", image: .halfavo)
]

let rightDishesData = [
    DishesModel(name: "Guacamole", image: .guacamole),
    DishesModel(name: "Sandwich", image: .sandwiches),
    DishesModel(name: "Soup", image: .soup),
    DishesModel(name: "Smoothie", image: .smoothies),
]
