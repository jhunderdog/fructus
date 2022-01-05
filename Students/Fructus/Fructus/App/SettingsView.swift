//
//  SettingsView.swift
//  Fructus
//
//  Created by jhunderdog on 2022/01/05.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    //MARK : PROPERTIES
    //MARK : BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
                VStack(spacing:20) {
                    //MARK : -SECTION1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                  Text("Most fruits are natually low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium")
                                .font(.footnote)
                        }
                    }
                    //MARK : -SECTION2
                    
                    //MARK : -SECTION3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                            Divider().padding(.vertical, 4)
                            SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "Designer", content: "Robert Petras")
                            SettingsRowView(name: "Compatibility", content: "iOS 14")
                            SettingsRowView(name: "Website",  linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter",  linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
                    
                .padding()
            }
        } // :NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
