//
//  FruitNutrientsView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct FruitNutrientsView: View {
  
  let fruit: Fruit
  let nutrients = ["Enery", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
  
    var body: some View {
      GroupBox() {
        DisclosureGroup("Nutritional value per 100g") {
          ForEach(0 ..< nutrients.count, id: \.self) { item in
            Divider().padding(.vertical, 2)
            HStack {
              Group {
                Image(systemName: "info.circle")
                Text(nutrients[item])
              }
              .foregroundColor(fruit.gradientColors[1])
              .font(Font.system(.body).bold())
              
              Spacer(minLength: 25)
              
              Text(fruit.nutrition[item])
                .multilineTextAlignment(.trailing)
            }
          }
        }
      } //: GroupBox
    }
}
