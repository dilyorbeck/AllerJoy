//
//  FoodItem.swift
//  Allerjoy
//
//  Created by Dilyorbek Sharofiddinov on 12/11/24.
//

import Foundation

struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let imageFW: String
    var ingredients: [FoodIngredient]
    let recipes: String
}

struct FoodIngredient: Identifiable {
    let id = UUID()
    var name: String
    var quantity: String
    var alternatives: [AlternativeProducts]?
}

struct AlternativeProducts: Identifiable {
    let id = UUID()
    var option: String
    var option2: String
    let quantity: String
    
}
