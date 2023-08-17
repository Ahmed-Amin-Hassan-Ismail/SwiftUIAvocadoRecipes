//
//  TabBarView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image.branchTapbar
                    Text("Avocados")
                }
            
            AvocadoRecipesView()
                .tabItem {
                    Image.bookTapbar
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image.avocadoTabbar
                    Text("Ripeing")
                }
            
            SettingsView()
                .tabItem {
                    Image.settingsTapbar
                    Text("Settings")
                }
        }
        .onAppear {
            
            UITabBar.appearance().backgroundColor = .systemGray5
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

struct TapView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
