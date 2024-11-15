//  MainView.swift
//  Allerjoy
//
//  Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""
    
    var filteredFoodItems: [FoodItem] {
        if searchText.isEmpty {
            return foodItems
        } else {
            return foodItems.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                let rows = filteredFoodItems.chunked(into: 2)
                
                ForEach(rows.indices, id: \.self) { index in
                    let row = rows[index]
                    HStack {
                        ForEach(row) { food in
                            NavigationLink(destination: IngredientsView(food: food)) {
                                VStack {
                                    Image(food.imageName)
                                    Text(food.name)
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                        .padding(.vertical, 5)
                        Spacer()
                    }
                }
                .padding(.horizontal, 30)
            }
            .searchable(text: $searchText, prompt: "Recipe title")
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
