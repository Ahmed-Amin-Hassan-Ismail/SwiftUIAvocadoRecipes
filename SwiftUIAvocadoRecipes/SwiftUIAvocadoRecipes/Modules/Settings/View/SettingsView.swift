//
//  SettingsView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        
        VStack {
            
            headerView
            
            Form {
                generalSettingsSection
                
                applicationSettingSection
            }
        }
    }
}

// MARK: - SETUP VIew

extension SettingsView {
    
    private var headerView: some View {
        VStack(spacing: 5) {
            
            Image.avocado
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .shadow(color: .lightShadow,
                        radius: 10, x: 0, y: 0)
            
            Text("avocados".uppercased())
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(.adaptiveGreen)
        }
    }
    
    private var generalSettingsSection: some View {
        
        Section {
            
            Toggle(isOn: $enableNotification) {
                Text("Eable Notification")
            }
            
            Toggle(isOn: $backgroundRefresh) {
                Text("Background Refresh")
            }
            
        } header: {
            Text("Genera Settings")
        }
    }
    
    private var applicationSettingSection: some View {
        
        Section {
            applicationSettingsList
        } header: {
            Text("Application")
        }
    }
    
    private var applicationSettingsList: some View {
        
        List {
            ForEach(settingsData.indices, id: \.self) { index in
                HStack {
                    Text(settingsData[index].title)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    if index == 3 {
                        
                        Link(destination: URL(string: settingsData[3].details)!) {
                            
                            Text("My GitHup")
                                .font(.system(.headline, design: .serif))
                                .foregroundColor(.blue)
                        }
                        
                    } else {
                        
                        Text(settingsData[index].details)
                    }
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
