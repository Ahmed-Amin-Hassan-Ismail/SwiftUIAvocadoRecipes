//
//  FactModel.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI


struct FactModel: Identifiable {
    var id = UUID()
    var image: Image
    var content: String
}

let factsData: [FactModel] = [
    FactModel(
        image: .avocadoFact1,
      content: "Avocado trees contain enzymes that prevent the fruit from ever ripening on the tree, allowing farmers to use the trees as storage devices for up to 7 months after they reach maturity."
    ),
    FactModel(
        image: .avocadoFact2,
      content: "It’s little wonder there are so many health benefits when a single serve of avocado (1/4 or 50g) boasts healthy fats, fibre, folate, niacin, vitamins C, B5, E & K, potassium and antioxidants."
    ),
    FactModel(
      image: .avocadoFact3,
      content: "The size of an avocado does not indicate the fruit quality or stage of ripeness. Avocado’s seed actually grows with the fruit, so the seed-to-fruit ratio will always be close to the same."
    ),
    FactModel(
      image: .avocadoFact4,
      content: "The skin and pit of Avocados can be extremly harmful to cats and dogs. While your pets can eat the inside of an avocado, the skin can be toxic to cats and dogs."
    ),
    FactModel(
      image: .avocadoFact5,
      content: "All avocados are picked by hand. They are harvested by using a 16-foot pole to reach the high-hanging fruit. They are expensive than other fruits because of the high cost of labor."
    ),
    FactModel(
      image: .avocadoFact6,
      content: "Avocados are a symbol of Love. In Aztec culture, avocados are a symbol of love. Why? Because they are not able to self-pollinate, they need a partner! They even grow in pairs!"
    ),
    FactModel(
      image: .avocadoFact7,
      content: "There’s a secret trick to ripening Avocados quick. Place it in a brown paper bag with a banana or two. Bananas will release ethylene gas, a natural plant hormone that aids in ripening fruit."
    ),
    FactModel(
      image: .avocadoFact8,
      content: "A delicious way to turn avocado into a sweetie food. Don’t just think of avocados as a savory addition to sandwiches and salads. Brazilians actually add avocados to ice cream."
    ),
    FactModel(
      image: .avocadoFact9,
      content: "Avocados are really old. Did you know that avocados have been around for a really, really long time? In fact, there is evidence of avocados that date back to 8.000 BCE."
    ),
    FactModel(
      image: .avocadoFact10,
      content: "Fun fact about avocados. Did you know that an avocado is a fruit? While avocados are definitely not sweet, they fall firmly in the fruit salads vegetable family."
    ),
    FactModel(
      image: .avocadoFact11,
      content: "Avocados contain four grams of protein, making them the fruit with the highest protein content! Avocados are high in potassium, fiber, and antioxidants as well."
    ),
    FactModel(
      image: .avocadoFact12,
      content: "Did you know? 96% of health professionals surveyed recommend avocados when recommending increased intake of fruits and vegetables."
    )
]

