// ModificationView.swift
// Allerjoy
//
// Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import SwiftUI

struct ModificationView: View {
    @Binding var ingredient: FoodIngredient
    
    @State private var selectedIndex: Int = 0
    @Environment(\.presentationMode) var presentationMode

    var baseIngredients: String { ingredient.name + " - " + ingredient.quantity }
    var option1Ingredients: String {
        if let alternatives = ingredient.alternatives, !alternatives.isEmpty {
            let firstAlternative = alternatives[0]
            return "\(firstAlternative.option) - \(firstAlternative.quantity)"
        } else {
            return "No alternatives available"
        }
    }
    var option2Ingredients: String {
        if let alternatives = ingredient.alternatives, !alternatives.isEmpty {
            let secondAlternative = alternatives[0]
            return "\(secondAlternative.option2) - \(secondAlternative.quantity)"
        } else {
            return "No alternatives available"
        }
    }
    var listIngredients: [String] { [baseIngredients, option1Ingredients, option2Ingredients] }
    
    var body: some View {
        VStack {
            Text("Options:")
                .font(.system(size: 34))
                .foregroundStyle(Color(hex: "#1D6E66"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            VStack {
                ForEach(listIngredients.indices, id: \.self) { id_ingredient in
                    Button {
                        selectedIndex = id_ingredient
                        print(selectedIndex)
                    } label: {
                        if selectedIndex == id_ingredient {
                            Text(listIngredients[id_ingredient])
                                .font(.system(size: 22))
                                .foregroundStyle(Color.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4, x: 0, y: 3)
                        } else {
                            Text(listIngredients[id_ingredient])
                                .font(.system(size: 22))
                                .foregroundStyle(Color.black)
                                .padding(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
            .padding(5)
            .frame(maxWidth: .infinity)
            .background(Color(hex: "#D6E5E3"))
            .cornerRadius(10)
            
            Text("Recipe Modification")
                            .font(.system(size: 34))
                            .foregroundStyle(Color(hex: "#1D6E66"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 40)
                        
                        VStack {
                            Text("Step 1")
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.top, .leading])
                            (Text("This is the original recipe that includes ")
                             + Text(listIngredients[0]).foregroundStyle(Color(hex: "#1D6E66")).bold() + Text(" in the specific step."))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            
                            if selectedIndex != 0 {
                                Image(systemName: "arrow.down")
                                
                                (Text("This is the new information about the recipe changed to ")
                                 + Text(listIngredients[selectedIndex]).foregroundStyle(Color(hex: "#1D6E66")).bold() + Text(" this is just more information"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                            }
                            
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .stroke(Color(hex: "#979797"), lineWidth: 1)
                                .shadow(radius: 3, x: 4, y: 4)
                        )
                        .padding(15)
                        
            
            Spacer()
        }
        .padding()
        .toolbar {
            Button("Save") {
                // Update the ingredient with the selected option
                if selectedIndex == 1, let alternatives = ingredient.alternatives, !alternatives.isEmpty {
                    ingredient.name = alternatives[0].option
                    ingredient.quantity = alternatives[0].quantity
                } else if selectedIndex == 2, let alternatives = ingredient.alternatives, !alternatives.isEmpty {
                    ingredient.name = alternatives[0].option2
                    ingredient.quantity = alternatives[0].quantity
                }
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    @Previewable @State var previewIngredient = FoodIngredient(
        name: "Rice",
        quantity: "2 cups (400g)",
        alternatives: [
            AlternativeProducts(option: "Brown Rice", option2: "Wild Rice", quantity: "2 cups (400g)")
        ]
    )
    
    return ModificationView(ingredient: $previewIngredient)
}
