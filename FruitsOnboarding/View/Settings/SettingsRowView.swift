//
//  SettingsRowView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct SettingsRowView: View {
  let name: String
  var content: String? = nil
  var link: String? = nil
  var linkDestination: String? = nil
  
    var body: some View {
      VStack {
        Divider()
          .padding(.vertical, 4)
        HStack {
          Text(name).foregroundColor(.gray)
          Spacer()
          if let content = content {
            Text(content)
          } else if let link = link, let destination = linkDestination {
            Link(link, destination: URL(string: "https://\(destination)")!)
            Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
          }
          
        } //: HStack
      }
    }
}

