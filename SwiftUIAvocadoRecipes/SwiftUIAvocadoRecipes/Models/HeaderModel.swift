//
//  HeaderModel.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI



struct Header: Identifiable {
    
    var id = UUID()
    var image: Image
    var headline: String
    var subheadline: String
    
}


let headersData: [Header] = [
    Header(
        image: Image.avocadoSlice1,
        headline: "Avocados",
        subheadline: "Avocados are a powerhouse ingredient at any meal for anyone."
    ),
    Header(
        image: Image.avocadoSlice2,
        headline: "Healthy",
        subheadline: "Avocados are good for humans and they can be part of our healthy diet."
    ),
    Header(
        image: Image.avocadoSlice3,
        headline: "Nutrients",
        subheadline: "Avocados have a surprising amount and diversity of vitamins and minerals."
    ),
    Header(
        image: Image.avocadoSlice4,
        headline: "Delicious",
        subheadline: "Craving more guacamole?  Find the best guacamole recipes in the app."
    ),
    Header(
        image: Image.avocadoSlice5,
        headline: "Tasty",
        subheadline: "Avocados are a good source of fiber, which makes you feel full."
    ),
    Header(
        image: Image.avocadoSlice6,
        headline: "Recipes",
        subheadline: "Enjoy these carefully handpicked avocado recipes for every occasion!"
    )
]
