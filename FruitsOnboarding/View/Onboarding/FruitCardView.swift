//
//  FruitCardView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 03.04.2021.
//

import SwiftUI

struct FruitCardView: View {
  @State private var isAnimating: Bool = false
  let fruit: Fruit
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
        
        Text(fruit.title)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2) 
        
        Text(fruit.headline)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        StartButtonView() 
      }
      .onAppear() {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        } 
      }
      .onDisappear() {
        isAnimating = false
      }

    }
    .foregroundColor(Color.white)
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}

