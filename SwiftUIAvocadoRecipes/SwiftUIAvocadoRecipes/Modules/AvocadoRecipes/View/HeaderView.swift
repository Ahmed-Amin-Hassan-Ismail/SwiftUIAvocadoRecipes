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
        
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(alignment: .top, spacing: 5) {
                ForEach(headersData) { header in
                    setupHeaderView(header: header)
                }
            }
        }
        .onAppear {
            showHeadline.toggle()
        }
    }
}

// MARK: - SETUP VIEW

extension HeaderView {
    
    private func setupHeaderView(header: Header) -> some View {
        
        ZStack(alignment: .bottomLeading) {
            
            imageView(with: header)
            
            avocadoTile(with: header)
        }
    }
    
    private func imageView(with header: Header) -> some View {
        
        header.image
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    private func avocadoTile(with header: Header) -> some View {
        
        HStack(alignment: .center, spacing: 0) {
            rectangleView()
            
            avocadoDiscription(with: header)
        }
        .frame(height: 105)
        .padding([.leading, .bottom], 20)
        .offset(y: showHeadline ? 0 : 400)
        .animation(slideInAnimation)
    }
    
    private func rectangleView() -> some View {
        
        Rectangle()
            .fill(Color.lightGreen)
            .frame(width: 4)
    }
    
    private func avocadoDiscription(with header: Header) -> some View {
        
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
        HeaderView()
    }
}
