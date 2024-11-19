//  MainView.swift
//  Allerjoy
//
//  Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import SwiftUI

struct IngredientsView: View {
    @State private var food: FoodItem
    
    init(food: FoodItem) {
        _food = State(initialValue: food)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 10) {
                    VStack {
                        Image(food.imageFW)
                        
                        VStack(alignment: .leading) {
                            Text(food.name)
                                .font(.system(size: 34))
                                .foregroundStyle(Color(hex: "#1D6E66"))
                                .bold()
                                .padding(.bottom, 3)
                            
                            (Text("Servings: ").bold() + Text("4"))
                                .padding(.bottom, 3)
                            
                            (Text("Time: ").bold() + Text("30 min"))
                                .padding(.bottom, 3)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        
                        LazyVStack(alignment: .leading, spacing: 10) {
                            ForEach(food.ingredients.indices, id: \.self) { index in
                                NavigationLink(
                                    destination: ModificationView(
                                        ingredient: $food.ingredients[index]
                                    )
                                ) {
                                    HStack {
                                        Text(food.ingredients[index].name)
                                            .font(.title2)
                                        Text(food.ingredients[index].quantity)
                                            .font(.title3)
                                    }
                                    .foregroundStyle(.black)
                                    .padding(.vertical, 5)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundStyle(.black)
                                        .font(.system(size: 25))
                                }
                            }
                        }.padding(.trailing, 50)

                        
                        Text("Recipe")
                            .font(.system(size: 34))
                            .foregroundStyle(Color(hex: "#1D6E66"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 25)

                        
                        Text(food.recipes)
                            .font(.system(size: 17))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .stroke(Color(hex: "#979797"), lineWidth: 1)
                                    .shadow(radius: 3, x: 4, y: 4)
                                )
                            .padding(.trailing, 50)

                    }
                }
            }
        }
    }
}

#Preview {
    IngredientsView(food: FoodItem(
        name: "Uzbek Plov",
        description: "Uzbek Plov is a traditional Uzbek dish that is made with a variety of ingredients.",
        imageName: "uzbek-plov",
        imageFW: "uzbek-plov-fw",
        ingredients: [
            FoodIngredient(name: "Rice", quantity: "2 cups (400g)", alternatives: [
                AlternativeProducts(option: "Brown Rice", option2: "Wild Rice", quantity: "2 cups (400g)")
            ]),
            FoodIngredient(name: "Lamb or Beef", quantity: "500g", alternatives: [
                AlternativeProducts(option: "Chicken", option2: "Tofu", quantity: "500g")
            ])
        ],
        recipes: "How it's made"
    ))
}
