//
//  techMonstersApp.swift
//  techMonsters
//
//  Created by Dilyorbek Sharofiddinov on 04/11/24.
//


import SwiftUI

// Model to represent a food item
struct FoodLabel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

// Sample data list of food items
let foodLabels = [
    FoodLabel(name: "Uzbek Plov", imageName: "uzbek-plov-h"),
    FoodLabel(name: "Fesenjon", imageName: "fesenjon"),
    FoodLabel(name: "Salmon With Vegetables", imageName: "salmon-with-vegetables"),
    FoodLabel(name: "Pasta", imageName: "pasta"),
]

struct Option2View: View {
    @State private var searchText = ""
    
    var filteredFoodItems: [FoodLabel] {
        if searchText.isEmpty {
            return foodLabels
        } else {
            return foodLabels.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    ForEach(filteredFoodItems) { food in
                        VStack{
                            Image(food.imageName)
                            Text(food.name)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 25)
                        }
                        .padding(.vertical, 8)
                    }
                }
                .padding()
            }
            .searchable(text: $searchText)
        }
    }
}

struct Option2View_Previews: PreviewProvider {
    static var previews: some View {
        Option2View()
    }
}
