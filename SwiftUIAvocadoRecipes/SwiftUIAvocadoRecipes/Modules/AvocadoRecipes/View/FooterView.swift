//
//  FooterView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            Text("All About Avocados")
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(.adaptiveGreen)
            
            Text("Everything you wanted to know about avocados but were too afraid to ask.")
                .font(.system(.body, design: .serif))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.gray)
        }
        
        
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
