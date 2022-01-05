//
//  ContentView.swift
//  Fructus
//
//  Created by jhunderdog on 2022/01/03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()){
                    item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }.navigationTitle("Fruits")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            isShowingSettings = true
                            
                        }) {
                            Image(systemName: "slider.horizontal.3")
                        }
                        .sheet(isPresented: $isShowingSettings, content: {
                            SettingsView()
                        })
                )
            
        } //: NAVIGATION
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
