//
//  SwiftUIAvocadoRecipesApp.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

@main
struct SwiftUIAvocadoRecipesApp: App {
    
    // MARK: - Properties
    
    @State private var shouldShowSplashScreen: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if shouldShowSplashScreen {
                    
                    SplashView(shouldShowSplashScreen: $shouldShowSplashScreen)
                        .transition(.move(edge: .bottom).animation(.spring()).combined(with: .opacity))
                    
                } else {
                    
                    TabBarView()
                }
                    
            }
        }
    }
}
