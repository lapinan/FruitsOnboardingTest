//
//  SettingsView.swift
//  FruitsOnboarding
//
//  Created by Андрей Лапин on 04.04.2021.
//

import SwiftUI

struct SettingsView: View {
  @Environment(\.presentationMode) var mode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
    var body: some View {
      NavigationView {
        ScrollView(showsIndicators: false) {
          VStack(spacing: 20) {
            GroupBox(
              label:
                SettingsLabelView(label: "fructus", image: "info.circle")
            ) {
               Divider()
                .padding(.vertical, 4)
              
              HStack(alignment: .center, spacing: 10) {
                Image("logo")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 80, height: 80)
                  .cornerRadius(9)
                
                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutriets, including potassium, dietary fiber, vitamins and much more.")
                  .font(.footnote)
              } //: HStack
            } //: GroupBox 1
            
            GroupBox(
              label: SettingsLabelView(label: "Customization", image: "paintbrush")
            ) {
              Divider()
                .padding(.vertical, 4)
              
              Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                .font(.footnote)
              
              Toggle(isOn: $isOnboarding) {
                if isOnboarding {
                  Text("Restarted".uppercased())
                    .fontWeight(.bold)
                } else {
                  Text("Restart".uppercased())
                    .fontWeight(.bold)
                }
              }
              .padding()
              .background(
                Color(UIColor.tertiarySystemBackground)
              )
              .clipShape(RoundedRectangle(cornerRadius: 8))
              .foregroundColor(isOnboarding ? .green : .secondary)
            }
            
            GroupBox(
              label: SettingsLabelView(label: "application", image: "apps.iphone")
            ) {
              SettingsRowView(name: "Developer", content: "Andrey Lapin")
              SettingsRowView(name: "Designer", content: "Robert Petras")
              SettingsRowView(name: "Compatibility", content: "iOS 14")
              SettingsRowView(name: "Website", link: "SwiftUI Masterclass", linkDestination: "www.apple.com/ru/")
              SettingsRowView(name: "SwiftUI", content: "2.0")
              SettingsRowView(name: "Version", content: "1.1.0")
            } //: GroupBox 2
            
           } //: VStack
        } //: Scroll View
        .padding()
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(trailing: Button(action: { mode.wrappedValue.dismiss() }, label: {
          Image(systemName: "xmark")
        }))
      } //: NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
          .previewDevice("iPhone 12 Pro Max")
    }
}
