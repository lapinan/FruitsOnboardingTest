//
//  OnboardingView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 03.04.2021.
//

import SwiftUI

struct OnboardingView: View {
  var body: some View {
    TabView {
      ForEach(fruitsData) { fruit in
        FruitCardView(fruit: fruit)
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
