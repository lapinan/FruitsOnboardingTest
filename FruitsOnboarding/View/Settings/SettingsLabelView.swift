//
//  SettingsLabelView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct SettingsLabelView: View {
  let label: String
  let image: String
  
    var body: some View {
      HStack {
        Text(label.uppercased()).fontWeight(.bold)
        Spacer()
        Image(systemName: image)
      }
    }
}

