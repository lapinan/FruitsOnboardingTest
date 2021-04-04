//
//  FruitDetailView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct FruitDetailView: View {
  let fruit: Fruit
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          FruitHeaderView(fruit: fruit)
          
          VStack(alignment: .leading, spacing: 20) {
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.headline)
              .font(.headline)
            
            FruitNutrientsView(fruit: fruit)
            
            Text("Learn moer about \(fruit.title.uppercased())")
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.description)
            
            SourceLinkView()
              .padding(.top, 10)
              .padding (.bottom, 80)
          }
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }
      }
      .navigationBarTitle(Text(""), displayMode: .inline)
      .navigationBarHidden(true)
      .edgesIgnoringSafeArea(.top)
    } //: NavigtionView
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


