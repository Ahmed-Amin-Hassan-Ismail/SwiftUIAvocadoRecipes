//
//  AvocadosView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct AvocadosView: View {
    
    // MARK: - PROPERTIES
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        ZStack {
            Image.background
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Image.avocado
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 240)
                    .shadow(color: .darkShadow,
                            radius: 10, x: 0, y: 0)
                    .scaleEffect(pulsateAnimation ? 1.0 : 0.9)
                    .opacity(pulsateAnimation ? 1.0 : 0.9)
                    .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: pulsateAnimation)
                
                Text("AVOCADOS")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .shadow(color: .darkShadow,
                            radius: 4, x: 0, y: 0)
                
                Text("Creamy, green, and full of nutrients!\nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(.lightGreen)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 350, minHeight: 120)
            }
        }
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
