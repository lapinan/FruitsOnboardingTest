//
//  FruitsOnboardingApp.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 03.04.2021.
//

import SwiftUI

@main
struct FruitsOnboardingApp: App {
  @AppStorage("isOnboarding") var isOnboarding = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
