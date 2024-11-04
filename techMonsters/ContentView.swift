//
//  ContentView.swift
//  techMonsters
//
//  Created by Dilyorbek Sharofiddinov on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TeamList()
            .background(Color(.systemGray6))
    }
}

struct TeamList: View {
    let members = [
        "Julio",
        "Ala",
        "Saghar",
        "Fereshteh",
        "Hadis",
        "Dilyorbek"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Team Members")
                .font(.title)
                .padding(.top)
                .padding(.leading)
            
            List {
                ForEach(members, id: \.self) { member in
                    Text(member)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
