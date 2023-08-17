//
//  FactsView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct FactsView: View {
    
    //MARK: - PROPERTIES
    
    private let linearGradient: LinearGradient =  LinearGradient(colors: [.mediumGreen, .lightGreen], startPoint: .leading, endPoint: .trailing)

    var body: some View {
        
        VStack {
            
            Text("Avocado Facts")
                .fontWeight(.bold)
                .modifier(TextModifier())
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(factsData) { fact in
                        setupFactView(with: fact)
                    }
                }
            }
        }
    }
}

// MARK: - SETUP VIEW

extension FactsView {
    
    private func setupFactView(with fact: FactModel) -> some View {
        ZStack(alignment: .leading) {
            factText(fact: fact)
            
            factImage(fact: fact)
        }
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width - 50)
    }
    
    private func factText(fact: FactModel) -> some View {
        
        Text(fact.content)
            .font(.system(.footnote))
            .foregroundColor(.white)
            .padding()
            .padding(.leading, 50)
            .background(linearGradient)
            .cornerRadius(12)
            .padding()
    }
    
    private func factImage(fact: FactModel) -> some View {
        
        fact.image
            .resizable()
            .frame(width: 66, height: 66)
            .clipShape(Circle())
            .background(
                addRoundedBackground(color: .white,
                                     width: 72,
                                     height: 72)
            )
            .background(
                Circle()
                    .fill(linearGradient)
                    .frame(width: 82, height: 82)
            )
            .background(
                addRoundedBackground(color: .appearanceAdapt,
                                     width: 90,
                                     height: 90)
            )
            .offset(x: -10)
    }
    
    private func addRoundedBackground(color: Color, width: CGFloat, height: CGFloat) -> some View {
        
        Circle()
            .fill(color)
            .frame(width: width, height: height)
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView()
    }
}
