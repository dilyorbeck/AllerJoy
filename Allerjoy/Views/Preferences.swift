//
//  Preferences.swift
//  Allerjoy
//
//  Created by Dilyorbek Sharofiddinov on 18/11/24.
//

import SwiftUI

struct Preferences: View {
    @State private var searchText = ""
    @State private var selectedAllergen: String? = nil
    @State private var navigateToMainView = false // State to handle navigation
    
    let allergens = [
        "Onion", "Zuccini", "Garlic", "Tomato", "Eggplant", "Egg",
        "Potato", "Rabish", "Alcohol", "Pork", "Chicken", "Beef",
        "Parmesan", "Fetta", "Motrazella", "Peanut", "Milk", "Strawberry",
        "Gluten", "Soy", "Grapes", "Kiwi", "Turkey", "Avocado", "Rice",
        "Corn", "Fish", "Mango", "Mashroom", "Honey", "Shellfish",
        "Pineapple", "Cinnamon", "Wheat", "Vanilla", "Ginger", "Coconut", "Peppers", "Other"
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(allergens, id: \.self) { allergen in
                    Button(action: {
                        selectedAllergen = (selectedAllergen == allergen) ? nil : allergen
                    }) {
                        Text(allergen)
                            .frame(width: 115, height: 40)
                            .background(selectedAllergen == allergen ? Color(hex: "#1D6E66").opacity(0.2) : Color(.white))
                            .foregroundColor(selectedAllergen == allergen ? Color(.white) : Color(hex: "#1D6E66"))
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(selectedAllergen == allergen ? Color(.white) : Color(hex: "#1D6E66"), lineWidth: 1)
                            )
                    }
                }
            }
            .padding()
            
            // NavigationLink to MainView
            NavigationLink(destination: MainView(), isActive: $navigateToMainView) {
                EmptyView()
            }
        }
        .navigationBarBackButtonHidden(true)
        .searchable(text: $searchText, prompt: "Ingredient title")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Select Your Allergens")
                    .foregroundColor(Color(hex: "#1D6E66"))
                    .font(.title3)
                    .fontWeight(.bold)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save") {
                    print("Selected Allergen: \(selectedAllergen ?? "None")")
                    
                    navigateToMainView = true
                }
                .foregroundColor(Color(hex: "#1D6E66"))
            }
        }
        .padding(.top, 0)
    }
}

#Preview {
    NavigationStack {
        Preferences()
    }
}
