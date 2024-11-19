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
    @State private var navigateToMainView = false
    
    // Updated the filteredAllergensItems logic
    var filteredAllergens: [String] {
        if searchText.isEmpty {
            return allergens
        } else {
            return allergens.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    let allergens = [
        "Onion", "Zucchini", "Garlic", "Tomato", "Eggplant", "Egg",
        "Potato", "Radish", "Alcohol", "Pork", "Chicken", "Beef",
        "Parmesan", "Feta", "Mozzarella", "Peanut", "Milk", "Strawberry",
        "Gluten", "Soy", "Grapes", "Kiwi", "Turkey", "Avocado", "Rice",
        "Corn", "Fish", "Mango", "Mushroom", "Honey", "Shellfish",
        "Pineapple", "Cinnamon", "Wheat", "Vanilla", "Ginger", "Coconut", "Peppers", "Other"
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(filteredAllergens, id: \.self) { allergen in
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
            
            .padding(.top, -10)
            
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
