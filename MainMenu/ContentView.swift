//
//  ContentView.swift
//  MainMenu
//
//  Created by jr on 17/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var game = EmojiMemoryGameViewModel(theme: DefaultThemes.theme1)
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 1, green: 0.780392156862745, blue: 0.364705882352941)
                VStack {
                    VStack {
                        NavigationLink(destination: MentalMath()) {
                            Text("Mental math")
                                .foregroundStyle(.black)
                        }
                    }
                    
                    NavigationLink(destination: Colours(redSlider: 0.0, greenSlider: 0.0, blueSlider: 0.0)) {
                        Text("Colours")
                            .foregroundStyle(.black)
                    }
                    
                    NavigationLink(destination: QuizAppView()) {
                        Text("Quiz")
                            .foregroundStyle(.black)
                    }
                    
                    NavigationLink(destination: ThemeSelectionView(tcManager: ThemeCollectionManager())) {
                        Text("Memory Game")
                            .foregroundStyle(.black)
                    }
                    
                    NavigationLink(destination: InstructionsView()) {
                        Text("Help")
                            .foregroundStyle(.black)
                    }
                    
                }
                .padding()
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
