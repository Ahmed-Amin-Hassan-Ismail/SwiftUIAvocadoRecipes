//
//  RipeningModel.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI


struct RipeningModel: Identifiable {
    var id = UUID()
    var image: Image
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}


let ripeningData: [RipeningModel] = [
    RipeningModel(
        image: .avocadoRipening1,
        stage: "1",
        title: "Hard",
        description: "Fresh off the tree, the avocado is very-very hard with no give.",
        ripeness: "5+ Days",
        instruction: "Hold avocados at room temperature until they are fully ripe."
    ),
    RipeningModel(
        image: .avocadoRipening2,
        stage: "2",
        title: "Conditioned",
        description: "Ripening has begun, however the avocado is still very firm.",
        ripeness: "4-5 Days",
        instruction: "Hold avocados at room temperature until they are fully ripe."
    ),
    RipeningModel(
        image: .avocadoRipening3,
        stage: "3",
        title: "Breaking",
        description: "As it ripens, the avocado is firm but yields slightly to pressure.",
        ripeness: "2 Days",
        instruction: "Hold avocados at room temperature until they are fully ripe."
    ),
    RipeningModel(
        image: .avocadoRipening4,
        stage: "4",
        title: "Ripe",
        description: "The avocados is ripe, and yields slightly to gentle pressure.",
        ripeness: "Firm-Ripe",
        instruction: "Avocados are best for thin or thick slices and small cubes."
    ),
    RipeningModel(
        image: .avocadoRipening5,
        stage: "5",
        title: "Ripe",
        description: "The avocado is ripe, and yields easily to gentle pressure.",
        ripeness: "Ripe",
        instruction: "Avocados are best for mashing and smoothies as well."
    )
]
