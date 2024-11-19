//
//  WelcomeView.swift
//  Allerjoy
//
//  Created by Dilyorbek Sharofiddinov on 18/11/24.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "#C4F5ED")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Welcom")
                        .font(.system(size: 48))
                        .foregroundColor(Color(hex: "#1D6E66"))
                        .fontWeight(.bold)
                    
                    Text("Allerjoy")
                        .font(.largeTitle)
                        .foregroundColor(Color(hex: "#1D6E66"))
                        .fontWeight(.bold)
                        .padding(.bottom, 50)
                    
                    Image("logo")
                        .padding(.leading, 40)
                    
                    VStack(alignment: .leading) {
                        Label("Personalize allergen-free meals!", systemImage: "carrot")
                        Label("Save your safe dishes!", systemImage: "star")
                            .padding(.top, 1)
                    }
                    .foregroundColor(Color(hex: "#1D6E66"))
                    .padding(.top, 50)
                    
                    NavigationLink(destination: Preferences()) {
                        Text("Get Started")
                            .font(.title)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 40)
                            .background(Color.white)
                            .cornerRadius(40)
                            .foregroundColor(Color(hex: "#1D6E66"))
                            .padding(.top, 30)
                    }
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
