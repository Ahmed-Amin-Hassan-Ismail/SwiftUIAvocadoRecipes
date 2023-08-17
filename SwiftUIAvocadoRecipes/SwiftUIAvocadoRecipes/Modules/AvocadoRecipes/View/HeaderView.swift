//
//  HeaderView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    
    @State private var showHeadline: Bool = false
    
    private var slideInAnimation: Animation {
        Animation.spring(response: 1.5,
                         dampingFraction: 0.5,
                         blendDuration: 0.5)
        .speed(1.0)
        .delay(0.25)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image.avocadoSlice1
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack(alignment: .center, spacing: 0) {
                Rectangle()
                    .fill(Color.lightGreen)
                    .frame(width: 4)
                
                VStack(alignment: .leading) {
                    Text("Avocado".uppercased())
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Avocados are a powerhouse ingredient at any meal for anyone.")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
                .shadow(radius: 3)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color.lightShadow)
            }
            .frame(height: 105)
            .padding([.leading, .bottom], 20)
            .offset(y: showHeadline ? 0 : 400)
            .animation(slideInAnimation)
        }
        .onAppear {
            showHeadline.toggle()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
