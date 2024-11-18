// ModificationView.swift
// Allerjoy
//
// Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import SwiftUI

struct ModificationView: View {
    let ingredient: FoodIngredient
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            //            Text("Original:")
            //                .font(.largeTitle)
            //
            //            VStack(alignment: .leading) {
            //                Text("\(ingredient.name) - \(ingredient.quantity)")
            //                    .font(.title)
            //            }
            //
            if let alternatives = ingredient.alternatives, !alternatives.isEmpty {
                Text("Options:")
                    .font(.largeTitle)
                
            
                
                ForEach(alternatives) { alternative in
                    VStack(alignment: .leading) {
                        Text("\(alternative.option) - \(alternative.quantity)")
                            .font(.title)
                        Text("\(alternative.option2) - \(alternative.quantity)")
                            .font(.title)
                    }
                    .padding(.bottom, 5)
                }
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .toolbar {
            Button("Save") {
                print("Save")
            }
        }
    }
}

#Preview {
    ModificationView(ingredient: FoodIngredient(
        name: "Rice",
        quantity: "2 cups (400g)",
        alternatives: [
            AlternativeProducts(option: "Brown Rice", option2: "Wild Rice", quantity: "2 cups (400g)")
        ]
    ))
}
