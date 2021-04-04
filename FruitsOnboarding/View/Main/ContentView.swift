//
//  ContentView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 03.04.2021.
//

import SwiftUI

struct ContentView: View {
  @State private var isShowSettings = false
  
  var body: some View {
    NavigationView {
      List {
        ForEach(fruitsData.shuffled()) { fruit in
          NavigationLink(
            destination: FruitDetailView(fruit: fruit),
            label: {
              FruitRowView(fruit: fruit)
                .padding(.vertical, 4 )
            })
        }
      } //: List
      .listStyle(PlainListStyle())
      .navigationTitle(Text("Fruits"))
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowSettings = true
          })  {
            Image(systemName: "slider.horizontal.3")
          }
          .sheet(isPresented: $isShowSettings) {
            SettingsView()
          }
      )
    } //: NavigationView
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
