//
//  FruitCardView.swift
//  Fructus
//
//  Created by jhunderdog on 2022/01/04.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK - ProPERTIES
    var fruit: Fruit
    
    //MARK - BODY
    
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0,green: 0,blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                // FRUIT: TITLE
                
                
                Text(fruit.title)
                // FRUIT: HEADLINE
                // BUTTON: START
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green:0, blue:0, opacity: 0.15),radius: 2, x:2, y:2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //BUTTON: START
                StartButtonView()
            } //:VSTACK
        } // : ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors:  fruit.gradientColors), startPoint: .top, endPoint: .bottom)
        ).cornerRadius(20)
            .padding(.horizontal, 20)
    }
}

    //MARK - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
