//
//  Fruit.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 03.04.2021.
//

import SwiftUI

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
