//
//  RipeningStagesView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                
                Spacer()
                
                HStack(alignment: .top, spacing: 20) {
                  
                    ForEach(ripeningData) { ripening in
                        RipeningView(ripening: ripening)
                    }
                }
                .padding()
                
                Spacer()
            }
        }
        
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
