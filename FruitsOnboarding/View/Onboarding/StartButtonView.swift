//
//  StartButtonView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 03.04.2021.
//

import SwiftUI

struct StartButtonView: View {
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  
  var body: some View {
    Button(action: { isOnboarding = false }) {
      HStack(spacing: 8) {
        Text("Start")
        
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .overlay(Capsule().stroke(lineWidth: 1.25))
    }
  }
}

struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    StartButtonView()
  }
}
