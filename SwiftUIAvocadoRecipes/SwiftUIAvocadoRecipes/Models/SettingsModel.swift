//
//  SettingsModel.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 18/08/2023.
//

import Foundation


struct SettingsModel {
    
    var title: String
    var details: String
    
   static var currentVersion: String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.2.0"
    }
}


let settingsData: [SettingsModel] = [
    SettingsModel(title: "Product", details: "Avocado Recipes"),
    SettingsModel(title: "Compatability", details: "IPhone / IPad"),
    SettingsModel(title: "Developer", details: "Ahmed Amin Hassan"),
    SettingsModel(title: "Website", details: "https://github.com/Ahmed-Amin-Hassan-Ismail/SwiftUIAvocadoRecipes"),
    SettingsModel(title: "Version", details: SettingsModel.currentVersion)
    
]
