//
//  OnboardingView.swift
//  Fructus
//
//  Created by jhunderdog on 2022/01/04.
//

import SwiftUI

struct OnboardingView: View {
    //MARK - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    //MARK - BODY
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){
                item in
                FruitCardView(fruit: item)
//                Text("Cards")
            } //: LOOP
            
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

// MAKR - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
