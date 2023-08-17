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
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(alignment: .top, spacing: 5) {
                        ForEach(headersData) { header in
                            HeaderView(header: header)
                                .frame(height: 350)
                        }
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
