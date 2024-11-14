//  MainView.swift
//  techMonsters
//
//  Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import SwiftUI

struct IngredientsView: View {
    let food: FoodItem
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 10) {
                VStack {
                    Image(food.imageFW)
                    
                    VStack(alignment: .leading){
                        Text("Ingredients")
                            .font(.largeTitle)
                            .foregroundStyle(.green)
                        
                        Text("Servings: 10")
                        
                        Text("Time: 30 min")
                        
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                    
                    LazyVStack(alignment: .leading, spacing: 10) {
                        ForEach(food.ingredients) { ingredient in
                            NavigationLink(destination: ModificationView(ingredient: ingredient)) {
                                HStack{
                                    Text(ingredient.name)
                                        .font(.title2)
                                    Text(ingredient.quantity)
                                        .font(.title3)
                                }
                                .foregroundStyle(.black)
                                .padding(.vertical, 5)
                                Spacer()
                                Image(systemName: "arrow.right")
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    
                    Text("Recipe")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(food.recipes)
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
    }
}

#Preview {
    IngredientsView(food: FoodItem(
        name: "Uzbek Plov",
        description: "Uzbek Plov is a traditional Uzbek dish that is made with a variety of ingredients.",
        imageName: "uzbek-plov", imageFW: "uzbek-plov-fw",
        rating: 5,
        numberOfIngredients: 8,
        ingredients: [
            FoodIngredient(name: "Rice", quantity: "2 cups (400g)", alternatives: [
                AlternativeProducts(option: "Brown Rice", option2: "Wild Rice", quantity: "2 cups (400g)")
            ]),
            FoodIngredient(name: "Lamb or Beef", quantity: "500g", alternatives: [
                AlternativeProducts(option: "Chicken", option2: "Tofu", quantity: "500g")
            ]),
            FoodIngredient(name: "Carrots", quantity: "2 large (300g)", alternatives: [
                AlternativeProducts(option: "Bell peppers", option2: "Sweet potatoes", quantity: "2 large (300g)")
            ]),
            FoodIngredient(name: "Onions", quantity: "2 medium (200g)", alternatives: [
                AlternativeProducts(option: "Leeks", option2: "Green onions", quantity: "2 medium (200g)")
            ]),
            FoodIngredient(name: "Garlic", quantity: "1 head", alternatives: [
                AlternativeProducts(option: "Ginger", option2: "Shallots", quantity: "1 head")
            ]),
            FoodIngredient(name: "Vegetable oil", quantity: "3-4 tablespoons", alternatives: [
                AlternativeProducts(option: "Olive oil", option2: "Coconut oil", quantity: "3-4 tablespoons")
            ]),
            FoodIngredient(name: "Salt", quantity: "1 tablespoon", alternatives: [
                AlternativeProducts(option: "Sea salt", option2: "Himalayan salt", quantity: "1 tablespoon")
            ]),
            FoodIngredient(name: "Black pepper", quantity: "1/2 teaspoon", alternatives: [
                AlternativeProducts(option: "White pepper", option2: "Paprika", quantity: "1/2 teaspoon")
            ])
        ],
        
        recipes: "How it's made"
    ))
}
