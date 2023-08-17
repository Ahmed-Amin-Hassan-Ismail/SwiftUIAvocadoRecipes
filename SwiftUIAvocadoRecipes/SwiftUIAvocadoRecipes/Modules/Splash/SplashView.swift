//
//  SplashView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct SplashView: View {
    
    // MARK: - Properties
    
    @Binding var shouldShowSplashScreen: Bool
    
    
    @State private var avocadoText = "AVOCADO".map({ String($0) })
    @State private var counter: Int = 0
    @State private var loop: Int = 0
    @State private var shouldShowAvocadoText: Bool = false
    
    @State private var timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()
    
    
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
            
            VStack(alignment: .center, spacing: 0) {
                
                Image(.avocado)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 240)
                    .offset(y: -10)
                
                if shouldShowAvocadoText {
                    HStack(spacing: 0) {
                        ForEach(avocadoText.indices, id: \.self) { index in
                            Text(avocadoText[index])
                                .font(.custom("Charter", size: 42))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .offset(y: counter == index ? -10 : 0)
                        }
                    }
                }
            }
        }
        .onAppear {
            withAnimation(.spring()) {
                shouldShowAvocadoText.toggle()
            }
        }
        .onReceive(timer) { output in
            withAnimation(.spring()) {
                
                if counter == avocadoText.count - 1 {
                    counter = 0
                    loop += 1
                    
                    
                    if loop >= 3 {
                        shouldShowSplashScreen = false
                    }
                } else {
                    
                    counter += 1
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(shouldShowSplashScreen: .constant(true))
    }
}
