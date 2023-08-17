//
//  RipeningView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct RipeningView: View {
    
    // MARK: - PROPERTIES
    
    @State private var slideInAnimation: Bool = false
    
    private let hardLinearGradient = LinearGradient(
        colors: [Color.white, Color.lightGreen],
        startPoint: .top, endPoint: .bottom)
    
    private let daysLinearGradient = LinearGradient(
        colors: [.mediumGreen, .darkGreen],
        startPoint: .top, endPoint: .bottom)
    
    private let backgroundLinearGradient = LinearGradient(
        colors: [.lightGreen, .mediumGreen],
        startPoint: .top, endPoint: .bottom)
    
    private let ripening: RipeningModel
    
    
    // MARK: - INIT
    
    init(ripening: RipeningModel) {
        
        self.ripening = ripening
    }
    
    
    var body: some View {
        
        VStack(spacing: 5) {
            
           ripeningImageView
            
            VStack(spacing: 30) {
            
                ripeningStageView
                
                ripeningTitleView
                
                ripeningDescription
             
                ripeningDaysView
                
                ripeningInstructionView
            }            
        }
        .multilineTextAlignment(.center)
        .padding(.horizontal)
        .frame(width: 260)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(backgroundLinearGradient)
                .shadow(color: .lightShadow,
                        radius: 6, x: 0, y: 6)
        )
        .onAppear {
            slideInAnimation.toggle()
        }
        
    }
}

// MARK: - SETUP VIEW

extension RipeningView {
    
    private var ripeningImageView: some View {
        ripening.image
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .background(
                Circle()
                    .fill(Color.lightGreen)
                    .frame(width: 110, height: 110)
            )
            .background(
                Circle()
                    .fill(Color.appearanceAdapt)
                    .frame(width: 120, height: 120)
            )
            .offset(y: slideInAnimation ? -55 : -200 )
            .animation(.easeInOut(duration: 1.0), value: slideInAnimation)
    }
    
    private var ripeningStageView: some View {
        VStack(spacing: 0) {
            Text("Stage")
                .font(.system(.title, design: .serif))
                .fontWeight(.heavy)
            
            Text(ripening.stage)
                .font(.system(size: 42))
                .fontWeight(.bold)
        }
        .foregroundColor(.mediumGreen)
    }
    
    private var ripeningTitleView: some View {
        
        Text(ripening.title)
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(.mediumGreen)
            .padding(.vertical)
            .frame(width: 220)
            .background(hardLinearGradient)
            .cornerRadius(10)
    }
    
    private var ripeningDescription: some View {
        
        Text(ripening.description)
            .fontWeight(.bold)
            .foregroundColor(.darkGreen)
    }
    
    private var ripeningDaysView: some View {
        
        Text(ripening.ripeness)
            .font(.system(.callout, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .padding(.vertical)
            .frame(width: 185)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(daysLinearGradient)
                    .shadow(color: .lightGreen,
                            radius: 6, x: 0, y: 6)
            )
            .cornerRadius(10)
            .shadow(color: Color.lightShadow,
                    radius: 10, x: 0, y: 0)
    }
    
    private var ripeningInstructionView: some View {
        Text(ripening.instruction)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.lightGreen)
            .lineLimit(3)
            .padding([.horizontal, .bottom], 25)
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[0])
    }
}
