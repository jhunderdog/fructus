//
//  FruitModel.swift
//  Fructus
//
//  Created by jhunderdog on 2022/01/04.
//

import SwiftUI

// MARK : -FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
