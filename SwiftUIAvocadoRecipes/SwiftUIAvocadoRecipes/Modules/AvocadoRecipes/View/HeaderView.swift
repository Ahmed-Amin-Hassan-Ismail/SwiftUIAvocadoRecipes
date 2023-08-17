//
//  HeaderView.swift
//  SwiftUIAvocadoRecipes
//
//  Created by Ahmed Amin on 17/08/2023.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    
    private let header: Header
    
    @State private var showHeadline: Bool = false
    
    private var slideInAnimation: Animation {
        Animation.spring(response: 1.5,
                         dampingFraction: 0.5,
                         blendDuration: 0.5)
        .speed(1.0)
        .delay(0.25)
    }
    
    // MARK: - Init
    init(header: Header) {
        
        self.header = header
    }
    
    var body: some View {
            ZStack(alignment: .bottomLeading) {
                
                imageView
                
                avocadoTile
            }
        .onAppear {
            showHeadline.toggle()
        }
    }
}

// MARK: - SETUP VIEW

extension HeaderView {
    
    private var imageView: some View {
        
        header.image
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    private var avocadoTile: some View {
        
        HStack(alignment: .center, spacing: 0) {
            rectangleView
            
            avocadoTitle
        }
        .frame(height: 105)
        .padding([.leading, .bottom], 20)
        .offset(y: showHeadline ? 0 : 400)
        .animation(slideInAnimation)
    }
    
    private var rectangleView: some View {
        
        Rectangle()
            .fill(Color.lightGreen)
            .frame(width: 4)
    }
    
    private var avocadoTitle: some View {
        
        VStack(alignment: .leading) {
            Text(header.headline.uppercased())
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(header.subheadline)
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
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[0])
    }
}
