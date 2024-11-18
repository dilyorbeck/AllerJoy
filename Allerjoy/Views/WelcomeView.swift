//
//  WelcomeView.swift
//  Allerjoy
//
//  Created by Dilyorbek Sharofiddinov on 18/11/24.
//

import SwiftUI

struct WelcomeView: View {
    let lightGreen = Color(red: 146 / 255, green: 224 / 255, blue: 211 / 255)
    let darkishGreen = Color(red: 29 / 255, green: 110 / 255, blue: 102 / 255)
    
    var body: some View {
        ZStack {
            lightGreen
                .ignoresSafeArea()
            VStack{
                Text("Welcom")
                    .font(.system(size: 48))
                    .fontWeight(.bold)
                    .foregroundColor(darkishGreen)
                Text("Allerjoy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(darkishGreen)
                    .padding(.bottom, 50)
                Image("logo")
                    .padding(.leading, 40)
                VStack(alignment: .leading){
                    Label("Personalize allergen-free meals!", systemImage: "carrot")
                    Label("Save your safe dishes!", systemImage: "star")
                }                    .foregroundColor(darkishGreen)
                    .padding(.top, 50)
                
                Button("Get Started"){}
                    .padding(.vertical, 15)
                    .padding(.horizontal, 40)
                    .font(.title)
                    .background(.white)
                    .cornerRadius(40)
                    .foregroundStyle(darkishGreen)
                    .padding(.top, 30)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
